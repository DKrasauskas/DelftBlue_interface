
build_dir="job"
# Find all scripts in subfolders of build_dir
find "$build_dir" -type f -name "request.sh" | while read -r script; do
    echo "Running $script on remote..."
    (cd "$(dirname "$script")" && sbatch "$(basename "$script")")
done