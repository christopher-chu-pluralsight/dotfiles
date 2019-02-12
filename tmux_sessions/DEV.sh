tmux new-session -s DEV -n vim \; \
  send-keys "tools" C-m \; \
  new-window -n git \; \
  send-keys "vup && dmount && tools" C-m \;
