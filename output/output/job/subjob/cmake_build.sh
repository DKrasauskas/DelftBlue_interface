module load 2025
module load cmake/3.30.5


module list 2>&1 | awk '
/Currently Loaded Modules:/ {print "\033[1;34m" $0 "\033[0m"; next}
NF {print "\033[31m" $0 "\033[0m"}'
cd job/subjob/OpenMP_exercises
ls -l
pwd
if cmake --version &> /dev/null; then
    mkdir -p build
    cd build
    cmake ..
    cmake --build .
else
    echo "Cmake Module not loaded / exiting"
fi