---
layout: default
title: Utility Scripts
parent: Home
nav_order: 3
---

## Utility Scripts

Some scripts are preinstalled on the machine to ease its management by workspace users. Admin scripts are accessible under `/srv/admin/scripts/` and user scripts under `/srv/user/scripts/`.

### Add Users

You can add users in bulk using the `add_users.sh` admin script. Place a `userlist.txt` file in your current directory. The file should contain a username on each line. Then run the script in the same directory. A local user account will be created for each username with the default password as the username. Each user should then change his password using the `passwd` command.

The easiest way to run these scripts (because they are not in the PATH) is to move in the `/srv/admin/scripts/` folder and run the commands from there. 
```shell
cd /srv/admin/scripts 
# to create a file containing a single user.name per line
touch userlist.txt
nano userlist.txt # copy or write out the users that you need to create, save the file (cntl + x -> yes)
# run the add_user script
bash ./add_user.sh
```

### Setup Research Drive

You can setup a Research Drive mount point for a user on the system by running the `setup_research_drive_mount.sh <username>` admin script. This script should only be run once for each user. It will setup a configuration directory `davfs2` and mount directory `research-drive` in the user's home directory.

The drive owner needs to generate an access token from the research drive portal.
The `webdav` credentials can be specified once in `~/.davfs2/secrets`.
You can then use `mount ~/research-drive` to connect the drive.

```shell
sudo /srv/admin/scripts/setup_research_drive_mount.sh user-1
```

### Add ssh public key

A user can quickly add an SSH **public key** to a workspace by using the `add_ssh_key.sh` user script.
For more information on setting up SSH access to a machine yourself, [click here](/docs/faq/#setup-ssh-access-to-your-workspace).

```shell
/srv/user/scripts/add_ssh_key.sh my-public-key
```
