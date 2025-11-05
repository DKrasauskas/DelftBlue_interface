is_tty=false
if [ -t 1 ]; then
    is_tty=true
fi

# Hide cursor if we're in a TTY, restore on exit
if $is_tty; then
    printf '\033[?25l'  # hide cursor
    trap 'printf "\033[?25h"; exit' INT TERM EXIT
fi

lines_prev=0

while true; do
  # Move cursor up to the start of the previous block
  for ((i=0; i<lines_prev; i++)); do
    printf '\033[1A\033[2K'  # up one line + clear line
  done

  # Capture squeue custom_run (store in an array)
  mapfile -t sq < <(squeue --me --noheader -o "%.5i %.10j %.18t %.10M %.10l %.4D %R")

  # Colorize custom_run using awk (typo fixed)
  awk_output=$(printf "%s\n" "${sq[@]}" | awk 'NR==1{
      printf "\033[1;31m%-10s %-20s %-8s %-10s %-10s %-4s %s\033[0m\n","JOBID","NAME","STATE","TIME","LIMIT","NODES","REASON"
      next
   }{
      c_jobid="\033[36m"; c_name="\033[32m"; c_state="\033[33m"; c_time="\033[35m"; c_reset="\033[0m";
      printf "%s%-10s%s %s%-20s%s %s%-8s%s %s%-10s%s %s%-10s%s %s%-4s%s %s\n",
             c_jobid,$1,c_reset,
             c_name,$2,c_reset,
             c_state,$3,c_reset,
             c_time,$4,c_reset,
             c_reset,$5,c_reset,
             c_reset,$6,c_reset,
             $7
   }')

  # Print the fresh block
  printf "%s\n" "$awk_output"

  # Record how many lines we printed (for next iteration)
  lines_prev=$(echo "$awk_output" | wc -l)

  sleep 5
done