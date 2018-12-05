percent_remaining=$(pmset -g batt | grep '[0-9][0-9]%' | awk 'NR==1{print$3}' | cut -c 1-3)

ac_power=$(pmset -g batt | grep 'AC Power')

if [ ${#ac_power} -gt 0 ]
then
    charging_symbol="電"
else
    charging_symbol="-"
fi

echo $percent_remaining $charging_symbol
