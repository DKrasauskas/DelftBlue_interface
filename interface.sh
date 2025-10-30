#clear folder if desired
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
    padding=$(( (term_width - ${#title_plain}) / 2 ))

    printf "\rSSH status: \033[1;32mConnected \033[0m\n"
    # print padding and title separately
    printf "%*s" $padding ""
    printf "%b\n" "$title"

}

(
    ssh -t dkrasauskas@login.delftblue.tudelft.nl "bash -s" < job/cleanup.sh
)  &
pid=$!
progress_bar $pid
wait $pid


#send job
scp -pr job dkrasauskas@login.delftblue.tudelft.nl:~/home/dkrasauskas << 'send1'
exit
send1

echo "Submit? [Y/n]"
read answer

# Convert answer to lowercase for easier comparison
answer=${answer,,}

if [[ "$answer" == "y" || "$answer" == "yes" || "$answer" == "" ]]; then
    echo -e "\r\033[1;33mLaunching Jobs \033[0m"
    #submit to scheduler and wait for completion
    ssh  dkrasauskas@login.delftblue.tudelft.nl  "bash -s" < job/remote_script.sh
elif [[ "$answer" == "n" || "$answer" == "no" ]]; then
    echo "You chose NO. Cancelled."
    # Place any cancellation logic here
else
    echo "Invalid input. Please enter Y or N."
fi




# send back
rsync -av --include='*.txt' --include='*.out' --exclude='*'  dkrasauskas@login.delftblue.tudelft.nl:~/home/dkrasauskas/job/ output
