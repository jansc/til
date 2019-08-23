# Creating a group and becoming a member without logout/login

Yesterday, I started playing with an USB-to-serial adapter. As it turned out, my user
was not allowed to access /dev/ttyUSB0, because the user was not part of the uucp group.
Adding a user to a group is easy on Arch/Manjaro:

```bash
$ gpasswd -d user group
or in my case:
$ gpasswd -d jans uucp
```

But to become a member of the group without having to logout and login a neat utility
exists. Say hello to `newgrp`.

```bash
$ groups
sys network power docker lp wheel jans
$ newgrp uucp
$ groups
uucp sys network power docker lp wheel jans
```

Never heard of this tool, but changing group memberships is not what I tend to do once
my system is configured. See man newgrp(1) for details.
