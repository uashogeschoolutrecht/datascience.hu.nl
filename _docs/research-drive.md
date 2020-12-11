---
layout: default
title: Connecting to HU ResearchDrive
parent: Home
nav_order: 2
---

## Connecting from your workspace to data in HU ResearchDrive

The HU ResearchDrive storage facility provided to the HU through SURF can be attached to your online workspace. This enables easy access to your data in HU Research Drive from your online workspace and simplifies the management of multiple copies of the data. A link to your drive is created by mounting the folder into the workspace. Data containing personal information under GDPR restriction can in this way be accessed and analyzed in your workspace through the mounted folder.

You can request from the [team](mailto:onderzoeksupport@hu.nl) or your project [admin](/docs/utilities/#setup-research-drive) to setup a `research-drive` folder in the home directory of your workspace. You can then mount this folder to your personal research drive using your credentials.

Go to [Research Drive](https://hu.data.surfsara.nl/) to login to your environment. Then, generate credentials from your research drive's setting page under `Settings` -> `Security` -> `WebDAV passwords`. You can then save your credentials in the private file `~/.davfs2/secrets` in your home directory. Finally, mount your research drive folder by running `mount ~/research-drive/`. You should now be able to access the datasets in your research drive account.
