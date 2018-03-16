# vagrant-devboxes

Vagrantfiles and common scripts to quickly setup VMs for test purposes under multiple distributions:

  - CentOS 6
  - CentOS 7
  - Debian 8
  - Debian 9
  - Ubuntu 14.04
  - Ubuntu 16.04

In each, it will install the release and development branches of Singularity, in
suid and no-suid forms, in separate prefixes under /vagrant/home

Also mounts ~/Git on host into /Git, and installs my dotfiles for the vagrant user.

## Convenience Scripts

  - **init_all.sh** Runs vagrant up, vagrant halt on each directory so that there are suspended VMs of each kind ready to go.
  - **halt_all.sh** Runs vagrant halt on each directory to suspend all VMs.
  - **destroy_all.sh ** Runs vagrant destroy on each directory to suspend all VMs.



