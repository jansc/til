# Repeating a command with sudo

Sometimes I forget to run a command as sudo. Bash comes to help and can repeat the previous command:

```bash
$ pacman -Suy docker
Sorry, user jans is not allowed to execute {command} as root.
$ sudo !!
sudo pacman -Suy docker
[sudo] passord for jans:  
...
$ 
```

`!!` can also be used to repeat the previous command.
