tmux new-session -s VM -n scribe \; \
  send-keys "wait_for_vm && ssh_cmd 'docker-compose up -d && dstart'" C-m \; \
  split-window -v \; \
  send-keys "wait_for_vm && ssh_cmd ui" C-m \; \
  split-window -h \; \
  send-keys "wait_for_vm && ssh_cmd serve" C-m \; \
  new-window -n herald1 \; \
  send-keys "wait_for_vm && ssh_cmd herald1" C-m \; \
  new-window -n herald2 \; \
  send-keys "wait_for_vm && ssh_cmd herald2" C-m \; \
  new-window -n test \; \
  send-keys "wait_for_vm && dev" C-m \; \
