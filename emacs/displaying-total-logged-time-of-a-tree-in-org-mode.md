# Displaying total logged time of a tree in org-mode

In org-mode, I often log time for tasks with C-c-C-x-C-i (org-clock-in) and C-c C-x C-o (org-clock-out). At the end of the day, it is nice to be able to sum up times for all tasks.

```
* Top task 1
** Sub task 1
   :LOGBOOK:
   CLOCK: [2018-08-29 on. 09:05]--[2018-08-29 on. 11:37] =>  2:32
   :END:
** Sub task 2
   :LOGBOOK:
   CLOCK: [2018-08-30 to. 13:14]--[2018-08-30 to. 14:38] =>  1:24
   CLOCK: [2018-08-30 to. 09:46]--[2018-08-30 to. 11:36] =>  1:50
   :END:
* Top task 2
** Sub task 3
   :LOGBOOK:
   CLOCK: [2018-08-30 to. 13:14]--[2018-08-30 to. 14:38] =>  1:24
   CLOCK: [2018-08-30 to. 09:46]--[2018-08-30 to. 11:36] =>  1:50
   :END:
** Sub task 4
   :LOGBOOK:
   CLOCK: [2018-08-30 to. 21:02]--[2018-08-30 to. 21:02] =>  0:00
   CLOCK: [2018-08-30 to. 14:38]--[2018-08-30 to. 15:08] =>  0:30
   :END:
```

Luckily, org-mode contains a short cut for this: C-c C-x C-d. The command displays the sum of all times:

```
* Top task 1···············································        5:46
** Sub task 1··············································        2:32
   :LOGBOOK:
   CLOCK: [2018-08-29 on. 09:05]--[2018-08-29 on. 11:37] =>  2:32
   :END:
** Sub task 2··············································        3:14
   :LOGBOOK:
   CLOCK: [2018-08-30 to. 13:14]--[2018-08-30 to. 14:38] =>  1:24
   CLOCK: [2018-08-30 to. 09:46]--[2018-08-30 to. 11:36] =>  1:50
   :END:
* Top task 2···············································        3:44
** Sub task 3··············································        3:14
   :LOGBOOK:
   CLOCK: [2018-08-30 to. 13:14]--[2018-08-30 to. 14:38] =>  1:24
   CLOCK: [2018-08-30 to. 09:46]--[2018-08-30 to. 11:36] =>  1:50
   :END:
** Sub task 4··············································        0:30
   :LOGBOOK:
   CLOCK: [2018-08-30 to. 21:02]--[2018-08-30 to. 21:02] =>  0:00
   CLOCK: [2018-08-30 to. 14:38]--[2018-08-30 to. 15:08] =>  0:30
   :END:
```

Another useful command is C-c C-c which updates a LOGBOOK row after you
manually edited it.
