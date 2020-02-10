# Resetting the backspace key

I'm currently developing an ncurses application, and my terminal often
ends up in a quite weird state. Usually, the backspace key does not work:

```bash
$ ls -xx^?^?
```

The `reset` command does help a lot, but not in this case. The solution
is this

```bash
$ stty erase ^?
```

Instead of typing `^?`, I hit the backspace key. I also created an alias:
  
```bash
alias r="reset && stty erase ^?"
```

(Again, instead of typing `^?`, i hit the backspace key.)

ncurses, here I come!
