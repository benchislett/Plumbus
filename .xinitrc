xrandr --setprovideroutputsource modesetting NVIDIA-0

# Second monitor config

xrandr --output HDMI-1-0 --auto --right-of eDP-1

# Turn off autosleep

xset -dpms s off

# Wacom tablet config

xsetwacom set "12" "Mode" "Relative"
xsetwacom set "13" "Mode" "Relative"
xsetwacom set "22" "Mode" "Relative"
xsetwacom set "23" "Mode" "Relative"

xsetwacom set "12" "Area" "0 0 30400 19000"
xsetwacom set "22" "Area" "0 0 30400 19000"

exec i3
