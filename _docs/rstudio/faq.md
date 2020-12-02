---
layout: default
title: FAQ
parent: RStudio
nav_order: 110
---

## Frequently Asked Questions

This is a list of the most common questions or issues that our users encounter.

### Initialization Error on RStudio server

You cannot login using your account because of a faulty session on the server.

- Delete the active session in your user account by removing the `~/.rstudio/` and `~/.Rhistory/` folders.

```shell
rm -rf ~/.rstudio/ ~/.Rhistory/
```

If the issue still persists, you might be having problems with your R dependencies.

- Delete the `~/R/` library folder.

```shell
rm -rf ~/R/
```

- Make sure you have enough resources on the server. Check your current usage using `htop`.
