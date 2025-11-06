#!/bin/bash
echo -e "\033[33m;Clearing Destination Folder\033[0m"

progress_bar() {
    local pid=$1
    local delay=0.1
    local width=30
    local progress=0

    while ps -p $pid &>/dev/null; do
        progress=$(( (progress + 1) % (width + 1) ))
        bar=$(printf "%0.s#" $(seq 1 $progress))
        printf "\rEstablishing SSH connection... [%-${width}s]" "$bar"
        sleep $delay
    done
    printf "\r\033[2K"
    clear

}
(
    ssh -t dkrasauskas@login.delftblue.tudelft.nl "bash -s"
)  &
pid=$!
progress_bar $pid
wait $pid


#send job

#The purpose of this is to send the jobs folder to the delftblue
send(){
local build_dir="$1"
rsync -av  job dkrasauskas@login.delftblue.tudelft.nl:~/
}

connect(){
printf "\rSSH status: \033[1;32mConnected \033[0m\n"
ssh -t  dkrasauskas@login.delftblue.tudelft.nl  "bash"
clear
}
submit(){
printf "\rSSH status: \033[1;32mConnected \033[0m\n"
ssh -t  dkrasauskas@login.delftblue.tudelft.nl  "cd home/dkrasauskas/job; bash & sbatch request.sh"
clear
}

compile(){
    local build_dir="job"
    # Find all scripts in subfolders of build_dir
    find "$build_dir" -type f -name "cmake_build.sh" | while read -r script; do
        echo "Running $script on remote..."
        ssh -t dkrasauskas@login.delftblue.tudelft.nl "bash -s" < "$script"
    done
}

dispatch(){
     ssh -t dkrasauskas@login.delftblue.tudelft.nl "bash -s" < remote/dispatch.sh
}

build_project(){
  local build_dir="$1"
  ssh -t dkrasauskas@login.delftblue.tudelft.nl "bash -s" < $build_dir/cmake_build.sh
}

retrieve(){
# send back
rsync -av  dkrasauskas@login.delftblue.tudelft.nl:~/ RemoteFolder/output
}

clean(){
  ssh -t dkrasauskas@login.delftblue.tudelft.nl "bash -s" < remote/cleanup.sh
  read input
  ssh -t  dkrasauskas@login.delftblue.tudelft.nl  "cd home/dkrasauskas/job; bash & ./remote_script.sh"
  clear
}


send
echo "File Transfer Complete"


export -f retrieve
export -f connect
export -f send
export -f build_project
export -f clean
export -f compile
export -f dispatch

exec bash --rcfile <(echo "PS1='[custom-shell] \$ '; source ~/.bashrc;")