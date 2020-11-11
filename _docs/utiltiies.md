---
layout: default
title: Utility Scripts
parent: Home
nav_order: 3
---

## Admin Utility Scripts

Some scripts are preinstalled on the machines to ease their management by workspace admins. The scripts are accessible under `/srv/admin/scripts/`.

### Add Users

You can add users in bulk using the `add_users.sh` script. Place a `userlist.txt` file in your current directory. The file should contain a username on each line. Then run the script in the same directory. A local user account will be created for each username with the default password as the username. Each user should then change his password using the `passwd` command.
