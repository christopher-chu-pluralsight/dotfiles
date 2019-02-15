tmux new-session -s DEV -n vim \; \
  send-keys "wait_for_vm && wait_for_mount && tools" C-m \; \
  new-window -n git \; \
  send-keys "vup && dmount && tools" C-m \;
