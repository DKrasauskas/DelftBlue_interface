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

    term_width=$(tput cols)
    title=$'\033[1;34mDelft Blue\033[0m'
    title_plain="Delft Blue"
    term_width=$(tput cols)
    echo -e "\033[34m$(toilet -f mono12  -w 200 'Delft Blue')\033[0m"
    printf "\rSSH status: \033[1;32mConnected \033[0m\n"
}

(
    ssh -t dkrasauskas@login.delftblue.tudelft.nl
)  &
pid=$!
progress_bar $pid
wait $pid
ssh  dkrasauskas@login.delftblue.tudelft.nl  "bash -s" < utils/job_monitor.sh