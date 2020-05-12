# Changing the default shell

On FreeBSD the default shell is tcsh. Since I grew up with bash, that's what I
prefer. To check the current shell, use

    echo $0

List available shells with

     cat /etc/shells

To change the current shell, use

    chsh -s /usr/local/bin/bash [USERNAME]

A user can change it's own shell. If you want to change another users shell,
you have to use sudo.
