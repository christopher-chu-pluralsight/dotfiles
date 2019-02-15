# https://tunnelblick.net/cAppleScriptSupport.html
status=$(osascript -e 'tell application "/Applications/Tunnelblick.app"' -e 'get state of first configuration' -e 'end tell')

if [ "$status" == "CONNECTED" ]; then
  is_connected="#[bg=#00afff] 接続"
else
  is_connected="#[bg=#875f00] なし"
fi

echo $is_connected
