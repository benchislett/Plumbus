# Kill all existing bars
killall -q polybar

# Wait for bars to close
while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

# Launch the bar
for m in $(xrandr --query | grep " connected" | cut -d " " -f1); do
  MONITOR=$m polybar -r main &
done

echo "Polybar launched"
