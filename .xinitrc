xrandr --setprovideroutputsource modesetting NVIDIA-0

# Second monitor config

xrandr --output HDMI-1-0 --auto --right-of eDP-1

exec i3
