#clear folder if desired
ssh -tt dkrasauskas@login.delftblue.tudelft.nl << 'init1'
rm -rf home/dkrasauskas/job
exit
init1

#send job
scp -pr /home/dominykas/Desktop/job dkrasauskas@login.delftblue.tudelft.nl:~/home/dkrasauskas << 'send1'
exit
send1

#submit to scheduler and wait for completion
ssh -tt dkrasauskas@login.delftblue.tudelft.nl << 'start'
cd home/dkrasauskas/job
sbatch ./request.sh
squeue --me
while true; do
    # Get the number of jobs (excluding the header)
    jobs=$(squeue --me --noheader)

    if [ -z "$jobs" ]; then
        echo "Queue is empty. Exiting loop."
        break
    fi

    echo "You still have $jobs job(s) in the queue."
    sleep 1  # Wait for 10 seconds before checking again
done
exit
start

# send back
scp -pr  dkrasauskas@login.delftblue.tudelft.nl:~/home/dkrasauskas/job /home/dominykas/Desktop
