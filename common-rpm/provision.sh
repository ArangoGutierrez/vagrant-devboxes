#!/bin/bash

# Now some base repo stuff
yum -y groupinstall "Development Tools"
yum -y install automake autoconf libarchive-devel libopenssl-devel libuuid-devel git valgrind vim-enhanced

# Things from EPEL
yum -y install epel-release
yum -y install golang

