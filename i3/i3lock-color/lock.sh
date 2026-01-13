#!/bin/sh

B='#00000000'  # blank
C='#6eb6b322'  # clear ish
D='#6eb6b3cc'  # default
T='#a5ece9ee'  # text
W='#ffffffff'  # white
V='#005cbbbb'  # verifying

~/.config/i3/i3lock-color/x86_64-pc-linux-gnu/i3lock \
--time-font="Hurmit Nerd Font Mono"	\
--date-font="Hurmit Nerd Font Mono"	\
--layout-font="Hurmit Nerd Font Mono"	 \
--verif-font="Hurmit Nerd Font Mono"	 \
--wrong-font="Hurmit Nerd Font Mono"	 \
--greeter-font="Hurmit Nerd Font Mono"	\
--date-font=monofur	\
--greetercolor=$W	\
--insidevercolor=$C   \
--ringvercolor=$W     \
\
--insidewrongcolor=$C \
--ringwrongcolor=$W   \
\
--insidecolor=$B      \
--ringcolor=$D        \
--linecolor=$B        \
--separatorcolor=$D   \
\
--verifcolor=$W        \
--wrongcolor=$W        \
--timecolor=$W        \
--datecolor=$W        \
--layoutcolor=$T      \
--keyhlcolor=$W       \
--bshlcolor=$W        \
\
--screen 1            \
--blur 5              \
--clock               \
--indicator           \
--timestr="%H:%M:%S"  \
--datestr="%A, %D" \
--keylayout 2         \
--veriftext="..." 	\
--wrongtext="Nope!"	\
--greetertext="L'ecran est vérouillé la tcheam"
#--textsize=20		\
#--modsize=10		
# etc
