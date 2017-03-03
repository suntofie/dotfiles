FG_COLOR=$(cat ~/.Xresources |grep -i foreground |tail -c 8)
BG_COLOR=$(cat ~/.Xresources |grep -i background |tail -c 8)
WIDTH=700
HEIGHT=14
X=700
Y=0
TEXT_ALIGNMENT="right"
FONT="-lucy-tewi2a-medium-r-normal--11-90-75-75-p-58-iso10646-1"


conky -c /home/sunto/dzonky | dzen2 -fg $FG_COLOR -bg $BG_COLOR -ta $TEXT_ALIGNMENT -w $WIDTH -h $HEIGHT -x $X -y $Y -fn $FONT
