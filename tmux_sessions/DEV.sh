tmux new-session -s DEV -n vim \; \
  send-keys "tools && vim" C-m \; \
  new-window -n git \; \
  send-keys "tools" C-m \;
