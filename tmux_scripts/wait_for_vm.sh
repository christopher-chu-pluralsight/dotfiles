vm_is_running=""
count="1"

cd ~/work/assessment-tools-vm

while [ ${#vm_is_running} -lt 1 ]; do
  echo "Waiting for VM..." $count
  vm_is_running=$(vagrant status | grep "The VM is running")
  count=$[$count+1]
  sleep 1
done

echo "VM is running!"
cd - > /dev/null
