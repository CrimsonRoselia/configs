function audio {
    cadence-session-start -s
    pulseaudio --start
    non-mixer-noui ~/mixer/abc
    mpd
    
    jack_connect Non-Mixer/MPD:out-1 system:playback_1
    jack_connect Non-Mixer/MPD:out-2 system:playback_2
}

# Xorg configuration
setxkbmap no
xrdb .Xresources
xset -b
xbindkeys &

# Screensaver
exec xscreensaver -no-splash &

audio &

perl ./code/i3dai/i3dai.pl &
mpd &
bash .fehbg &
compton -b --backend glx &
exec clipit &
exec i3
