---
layout: default
title: FAQ
parent: Jupyter
nav_order: 10
---

## Frequently Asked Questions

This is a list of the most common questions or issues that our users encounter.

### Install python dependencies

In order to install python dependencies in the Jupyter environment, you need to have superuser privileges and use the `-E` flag with the command.

#### Pip dependencies

```shell
sudo -E pip install ...
```

#### Conda dependencies

```shell
sudo -E conda install ...
```

### Connect to tensorboard

In order to use `tensorboard` in your jupyter environment, you need to install the [jupyter-tensorboard](https://pypi.org/project/jupyter-tensorboard/) plugin.
