#!/bin/sh
sbatch ./request.sh
squeue --me
while true; do
    # Get the number of jobs (excluding the header)
    job_count=$(
      squeue --me  -o "%.8i %.15j %.8t %.10M %.10l %.4D %R" | tail -n +2 | wc -l | column -t | \
      awk 'NR==1 {
          # Header — bold white
          printf "\033[1;31m%s\033[0m\n", $0; next
       }
       {
          # Define colors
          c_jobid="\033[36m"      # cyan
          c_name="\033[32m"       # green
          c_state="\033[33m"      # yellow
          c_time="\033[35m"       # magenta
          c_reset="\033[0m"

          # Parse columns (adjust positions as needed)
          printf "%s%-10s%s %s%-20s%s %s%-8s%s %s%-10s%s %s%-10s%s %s%-4s%s %s\n",
                 c_jobid, $1, c_reset,
                 c_name, $2, c_reset,
                 c_state, $3, c_reset,
                 c_time, $4, c_reset,
                 c_reset, $5, c_reset,
                 c_reset, $6, c_reset,
                 $7
       }'
    )


    if [ "$job_count" -eq 0 ]; then
        echo "Queue is empty. Exiting loop."
        break
    fi

    echo "You still have $job_count job(s) in the queue."
    sleep 10  # Wait for 10 seconds before checking again
done
