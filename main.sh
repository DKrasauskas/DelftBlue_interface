tmux kill-server
tmux kill-session -t jobs
tmux new-session -d -s jobs
tmux send-keys -t jobs:0.0 "./utils/monitor.sh" C-m
tmux split-window -v -t jobs:0
tmux send-keys -t jobs:0.1 "./utils/interface.sh" C-m
tmux set -g mouse on
tmux attach -t job