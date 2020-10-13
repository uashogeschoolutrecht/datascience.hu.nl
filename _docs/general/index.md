---
layout: default
title: System Overview
nav_order: 1
---

![system architecture diagram](/assets/general/system-architecutre.png)

The virtual research environment is running on virtual machines hosted in the HPC cloud. The system consists of three types of nodes:

- `Gateway`: The gateway acts as the entry point to the system.
  It is responsible for serving the correct resource based on the URL of the request. It is set up as a reverse proxy using NGINX.
- `Workspace`: A workspace allows a researcher to process and analyze datasets using applications such as JupyterHub and RStudio.
  They are usually allocated a large amount of resources to enable use cases such as high-performance computing as well as allowing a large number of users to collaborate on the same project.
- `Ansible`: The ansible control node is used to setup and manage machines in the cloud.
  The operator can execute scripts using ansible to configure any number of machines at scale. This provides an automated and well-understood provisioning process.
