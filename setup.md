---
layout: page
title: Setup
root: .
---


### Key requirements

The main requirement for this workshop is a computer with a web browser and a command line shell program.  

The **Docker** engine is required to run the majority of the examples.  If you are unable to install it locally, you need to seek access to a machine with Docker installed (*e.g.* a cloud instance on the Pawsey Nimbus cloud).  

If you want to test the containers with **Singularity**, you'll need to either install it or get access to a system that provides it (*e.g.* one of the Pawsey systems).  This is not essential to follow the workshop.


> ## NOTE for Pawsey users
> 
> * **Nimbus Cloud @Pawsey**: if you have access, both Singularity and Docker are preinstalled in the *Ubuntu Pawsey* base image.
> <!-- Test: Ubuntu 18.04 VM with 2 cores, 6 GB RAM, 40 GB disk -->
> 
> * **Zeus/Topaz/Garrawarla @Pawsey**: if you have access, Singularity can be loaded with `module load singularity`. 
{: .callout}


### Shell terminal

*Windows* users: [MobaXterm](https://mobaxterm.mobatek.net/download-home-edition.html) is the **preferred option**.  The *Portable Edition* is best, as it does not require administrative privileges.  
<!--Other acceptable options would be [Visual Studio Code](https://code.visualstudio.com/) or PuTTY, but you will also need to install [Cygwin/X](https://x.cygwin.com) to run the example on X11 applications.  -->


### Container engines: installation DIY (Do It Yourself)

If you have your own machine, you can install the required software yourself (might take a while).  
Note that you will need ***admin* privileges** in the machine to finalise the installation.

#### Linux box

- Docker : [script]({{ page.root }}/files/install-docker.sh) \| [docs (unofficial)](https://www.itzgeek.com/how-tos/linux/ubuntu-how-tos/how-to-install-docker-on-ubuntu-18-04-lts-bionic-beaver.html)
- Singularity (optional) : [script]({{ page.root }}/files/install-singularity.sh) \| [docs](https://sylabs.io/guides/3.5/user-guide/quick_start.html)
- pip-tools (optional) : install Python and pip, then run `pip install pip-tools`
- MPICH (optional) : [script]({{ page.root }}/files/install-mpich.sh)

**Note:** these install scripts have been tested on a Ubuntu machine through a user that can run *sudo* commands without password prompts. There's no warranty they will work in your Linux box, you should consider them as templates.

#### macOS or Windows machine

For *Docker*, you can download and run installers for [macOS](https://hub.docker.com/editions/community/docker-ce-desktop-mac/) and [Windows](https://hub.docker.com/editions/community/docker-ce-desktop-windows/).

For *Singularity*, you will need to setup a Linux virtual machine, and then follow the Linux instructions above.  
It's not as bad as it sounds... the main two options are:
  - Vagrant: follow these instructions by Sylabs on [Setting up Singularity with Vagrant](https://sylabs.io/guides/3.5/admin-guide/installation.html#installation-on-windows-or-mac) (*macOS* users: DO NOT use the proposed *Singularity Desktop*, use Vagrant instead);
  - Multipass: follow instructions from the [Multipass Homepage](https://multipass.run).
