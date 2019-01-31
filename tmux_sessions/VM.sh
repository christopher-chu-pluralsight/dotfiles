tmux new-session -s VM \; \
  send-keys "ssh_cmd 'docker-compose up -d'" C-m \; \
  split-window -v \; \
  send-keys "ssh_cmd ui" C-m \; \
  split-window -h \; \
  send-keys "ssh_cmd serve" C-m \; \
  new-window \; \
  send-keys "ssh_cmd herald1" C-m \; \
  new-window \; \
  send-keys "ssh_cmd herald2" C-m \;
