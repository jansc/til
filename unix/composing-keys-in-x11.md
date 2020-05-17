# Composing keys in X11

My main machine has a Norwegian keyboard layouts. Writing English is no
problem, but sometimes I have to answer mails written in German, so
I need to write German umlauts. While I could add a German keyboard layout
to my X11 configuration as well, I usually only need to write some
scentences. So it would be nice to be able to enter umlauts with the
Norwegian keyboard layout enabled.

TIL that you can set a compose key, which enables me to enter `¨` followed
by, e.g. `u` to enter `ü`. It can be set with:

    setxkbmap -option compose:caps

at the terminal (no X11 restart required) or in my keyboard.conf with

    Option          "XkbOptions" "compose:caps"

Now, I can hit `CAPS` followed by the accent and the character which I want
to add an accent to.

