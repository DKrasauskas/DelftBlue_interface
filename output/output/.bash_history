rm -rf home/dkrasauskas/job
exit
cd home/dkrasauskas/job
cmake --version
sbatch ./request.sh
squeue --me
while true; do     jobs=$(squeue --me --noheader);      if [ -z "$jobs" ]; then         echo "Queue is empty. Exiting loop.";         break;     fi;      echo "You still have $jobs job(s) in the queue.";     sleep 1  # Wait for 10 seconds before checking again; done
exit
rm -rf home/dkrasauskas/job
exit
rm -rf home/dkrasauskas/job
exit
cd home/dkrasauskas/job
module load cmake
sbatch ./request.sh
squeue --me
while true; do     jobs=$(squeue --me --noheader);      if [ -z "$jobs" ]; then         echo "Queue is empty. Exiting loop.";         break;     fi;      echo "You still have $jobs job(s) in the queue.";     sleep 1  # Wait for 10 seconds before checking again; done
exit
cd home/dkrasauskas/job
module load cmake
sbatch ./request.sh
squeue --me
while true; do     jobs=$(squeue --me --noheader);      if [ -z "$jobs" ]; then         echo "Queue is empty. Exiting loop.";         break;     fi;      echo "You still have $jobs job(s) in the queue.";     sleep 1  # Wait for 10 seconds before checking again; done
exit
rm -rf home/dkrasauskas/job
exit
rm -rf home/dkrasauskas/job
exit
rm -rf home/dkrasauskas/job
exit
rm -rf home/dkrasauskas/job
exit
rm -rf home/dkrasauskas/job
exit
rm -rf home/dkrasauskas/job
exit
rm -rf home/dkrasauskas/job
exit
rm -rf home/dkrasauskas/job
exit
rm -rf home/dkrasauskas/job
exit
rm -rf home/dkrasauskas/job
exit
rm -rf home/dkrasauskas/job
exit
rm -rf home/dkrasauskas/job
exit
rm -rf home/dkrasauskas/job
exit
rm -rf home/dkrasauskas/job
exit
rm -rf home/dkrasauskas/job
exit
cd home/dkrasauskas/job
sbatch ./request.sh
squeue --me
while true; do     jobs=$(squeue --me --noheader);      if [ -z "$jobs" ]; then         echo "Queue is empty. Exiting loop.";         break;     fi;      echo "You still have $jobs job(s) in the queue.";     sleep 1  # Wait for 10 seconds before checking again; done
cd home/dkrasauskas/job
sbatch ./request.sh
squeue --me
while true; do     jobs=$(squeue --me --noheader);      if [ -z "$jobs" ]; then         echo "Queue is empty. Exiting loop.";         break;     fi;      echo "You still have $jobs job(s) in the queue.";     sleep 1  # Wait for 10 seconds before checking again; done
cd home/dkrasauskas/job
sbatch ./request.sh
squeue --me
while true; do     jobs=$(squeue --me --noheader);      if [ -z "$jobs" ]; then         echo "Queue is empty. Exiting loop.";         break;     fi;      echo "You still have $jobs job(s) in the queue.";     sleep 1  # Wait for 10 seconds before checking again; done
cd home/dkrasauskas/job
sbatch ./request.sh
squeue --me
while true; do     jobs=$(squeue --me --noheader);      if [ -z "$jobs" ]; then         echo "Queue is empty. Exiting loop.";         break;     fi;      echo "You still have $jobs job(s) in the queue.";     sleep 1  # Wait for 10 seconds before checking again; done
rm -rf home/dkrasauskas/job
exit
pam_nlogin(8)
cd home
cd dkrasauskas
exit
echo -e "\n Current Job List: "
squeue --me  -o "%.8i %.15j %.8t %.10M %.10l %.4D %R" | column -t | awk 'NR==1 {
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
rm -rf home/dkrasauskas/job
cd home/dkrasauskas
squeue --me
sbatch ./request.sh
cd job
ls
sbatch script.sh 
echo -e "\n Current Job List: "
squeue --me  -o "%.8i %.15j %.8t %.10M %.10l %.4D %R" | column -t | awk 'NR==1 {
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
rm -rf home/dkrasauskas/job
#!/bin/bash
echo "hi"
exec bash
#echo -e "\r\033[1;33m IOT DelftBlue \033[0m"
exit
cd home
ls
cd job
pwd
exit
exit
exit
clear
ls -l
labas
./remote_script
pwd
./remote_script.sh
clear
ls
-ls
clear
ls
pwd
cd
ls
cd home
cd dkrasauskas
ls
cd job
ls
sbatch request.sh
squeue --me
ls
nano output.txt 
exit
pwd
ls -l
squeue --me
exit
exit
ls
pwd
exit
pwd
ls
./request.sh
sbatch script.sh 
sbatch request.sh
exit
pwd
sbatch request.sh
exit
module load cmake
./cmake_build.sh 
ls
cd ../
ls
./cmake_build.sh
exit
exit
exit
exit
exit
exit
exit
pwd
ls -l
cd ../../
pwd
ls -l
ls
cd ../
ls
cd job
ls
cd OpenMP_exercises
ls
cd ../
rm -rf OpenMP_exercises
ls
pwd
ls
exit
pwd
sbatch request.sh 
exit
sbatch request.sh 
exit
squeue --me
exit
sbatch request.sh
squeue --me
exit
squeue --me
ls
cd OpenMP_exercises/
ls
cd build/
ls
cd OpenMP_exercises 
exit
sbatch request.sh
exit
sbatch request.sh 
squeue --me
retrieve
exit
sbatch request.sh
squeue --me
squeue --me
squeue --me
exit
sbatch -request.sh
sbatch request.sh
sbatch request.sh 
squeue --me
sbatch request.sh
squeue --me
sbatch request.sh
squeue --me
sbatch request.sh
sbatch request.sh
squeue --me
sbatch request.sh
sbatch request.sh
sbatch request.sh
sbatch request.sh
sbatch request.sh
sbatch request.sh
sbatch request.sh
sbatch request.sh 
sbatch request.sh 
sbatch request.sh 
sbatch request.sh
sbatch request.sh
sbatch request.sh
sbatch request.sh
sbatch request.sh
sbatch request.sh
sbatch request.sh
sbatch request.sh
sbatch request.sh
sbatch request.sh
sbatch request.sh
sbatch request.sh
sbatch request.sh
sbatch request.sh
sbatch request.sh
sbatch request.sh
sbatch request.sh
sbatch request.sh
sbatch request.sh
sbatch request.sh
sbatch request.sh
sbatch request.sh
sbatch request.sh
sbatch request.sh
sbatch request.sh 
sbatch request.sh 
sbatch request.sh 
sbatch request.sh 
sbatch request.sh 
sbatch request.sh
sbatch request.sh
sbatch request.sh
sbatch request.sh
sbatch request.sh
squeue --me
squeue --start
exit
sclear 85533
clean 85533
scancel 85522
scancel 85533
scancel 8553392
scancel 8553393
exit
sbatch request.sh
scancel 8553579
exit
pwd
cd ../
ls
cd job
ls
sbatch request.sh 
exit
sbatch request.sh
ls
cd OpenMP_exercises/
ls
cd build/
ls
cd ../
cd../
cd ../
ls
cd ../
ls
cd job
ls
exit
exit
sbatch request.sh
exit
sbatch -request.sh
sbatch request.sh
exit
ls
sbatch request.sh
sbatch request.sh
squeue --me
sinfo
ls
cd OpenMP_exercises/
ls
cd build
ls
sbatch request.sh
cd ../../
sbatch request.sh
squeue --me
squeue --me
cd OpenMP_exercises/
cd build
ls
nano output.txt
exit
sbatch request.sh
squeue --me
squeue --me
cd job
cd OpenMP_exercises/
cd build
nano output.txt 
exit
sbatch request.sh
squeue --me
squeue --me
squeue --start
exit
sbatch request.sh
squeue --me
squeue --start
squeue --start
squeue --start
squeue --nme
squeue --me
squeue --start
squeue
squeue
retrieve
exit
sbatch request.sh
squeue --me
squeue --me
squeue --me
squeue --me
squeue --me
squeue --me
squeue --me
squeue --me
squeue --me
squeue --me
squeue --me
squeue --me
squeue --me
squeue --me
sclear 8556034 
scancel 8556034 
scancel 8556045 
exit
sbatch request.sh
squeue --me
exit
tree 
tree
tree
tyree
tree
tree
pwd
tree -l2
tree
tree
rm -rf build 
pwd
rm -rf home
tree
exit
tree
cd job/subjob
cd OpenMP_exercises/
tree
cd ../
cd ../
rm -rf subjob
tree
cd job
tree
cd subjob
sbatch request.sh 
cd ../
cd subjob1
sbatch request.sh 
squeue --me
exit
tree
exit
cd jpb
cd job
tree
cd subjob
sbatch request.sh 
cd ../
cd subjob1
sbatch reuest.sh
tree
nano slurm-855613
exit
tree
cd job/subjob
tree
nano request.sh
sbatch request.sh
exit
squeue --me
squeue --me
exit
squeue --me
exit
tree
rm -rf job
exit
squeue --me
squeue --me
exit
exit
rm -rf job
exit
tree
rm -rf job
tree
rm-rf slurm-8556132
rm slurm-8556132
rm slurm-8556133
rm slurm-8556133.out
rm slurm-8556137.out
rm slurm-8556138.out
rm slurm-8556139.out
rm slurm-8556140.out
exit
squeue --me
scancel 8556169
scancel 8556170
squeue --me
squeue --me
squeue --me
squeue --me
exit
squeue --me
squeue --me
squeue --me
squeue --me
squeue --me
exit
squeue --me
squeue --me
exit
