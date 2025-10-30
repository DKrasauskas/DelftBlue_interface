#!/bin/sh
sbatch ./request.sh
squeue --me
while true; do
    # Get the number of jobs (excluding the header)
    job_count=$(squeue --me | tail -n +2 | wc -l)

    if [ "$job_count" -eq 0 ]; then
        echo "Queue is empty. Exiting loop."
        break
    fi

    echo "You still have $job_count job(s) in the queue."
    sleep 10  # Wait for 10 seconds before checking again
done
