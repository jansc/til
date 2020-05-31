# Ejecting a CD on freebsd

I bought some CDs and wanted to rip them via my Apple USB superdrive
(which btw works perfectly on FreeBSD). The drive has no eject button,
but it's quire easy to eject a CD:

    cdcontrol eject

`cdcontrol` has lots of other useful commands. It can, among other things,
be used to play audio CDs. See the man page at
[cdcontrol (1)](https://www.freebsd.org/cgi/man.cgi?cdcontrol(1)).
