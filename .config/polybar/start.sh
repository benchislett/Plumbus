# Kill all existing bars
killall -q polybar

# Wait for bars to close
while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

# Launch the bar
polybar -r main &

echo "Polybar launched"
