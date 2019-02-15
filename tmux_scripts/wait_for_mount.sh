vol_is_mounted=""
count="1"

while [ ${#vol_is_mounted} -lt 1 ]; do
  echo "Waiting for /opt/assessment-tools to mount (don't forget to type your password!)..." $count
  vol_is_mounted=$(ls /opt/assessment-tools)
  count=$[$count+1]
  sleep 10
done

echo "Volume is mounted!"
