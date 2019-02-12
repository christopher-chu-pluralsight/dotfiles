percent_remaining=$(pmset -g batt | grep -E '[0-9]{1,3}%' | awk 'NR==1{print$3}' | cut -c 1-3)

ac_power=$(pmset -g batt | grep 'AC Power')

if [ ${#ac_power} -gt 0 ]
then
  charging_symbol="電"
else
  charging_symbol="-"
fi


if [ $percent_remaining -gt 75 ]; then
  color="#87d700"
elif [ $percent_remaining -gt 50 ]; then
  color="#ffd700"
elif [ $percent_remaining -gt 25 ]; then
  color="#ff5f00"
else
  color="#ff0000"
fi

#echo $percent_remaining
echo "#[bg=$color]" $percent_remaining% $charging_symbol
