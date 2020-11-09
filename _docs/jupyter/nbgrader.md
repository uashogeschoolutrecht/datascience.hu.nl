---
layout: default
title: Enable nbgrader plugin 
parent: Jupyter
nav_order: 2
---

You can create graded assignments for your students and distribute them on the server
using the `nbgrader` plugin. Enable the plugin by logging in with your admin account and
running this script in your terminal: `/srv/jupyterhub-admins/scripts/enable_nbgrader.sh`.
After you've restarted your notebook server, you will see a new `Form Grader` tab that you can use to manage
your assignments.
Find out more about how to use `nbgrader` [here](https://nbgrader.readthedocs.io/en/stable/).
