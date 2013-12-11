# Xorg configuration
setxkbmap no
xrdb .Xresources
xset -b

exec xscreensaver -no-splash &

case  $1 in
xfce)
	exec startxfce4
	;;
i3|*)
	feh --bg-scale ~/desktop.gif &
	compton -b --backend glx &
	exec clipit &
	exec i3
	;;
esac
