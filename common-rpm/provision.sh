#!/bin/bash

# Now some base repo stuff
yum -y groupinstall "Development tools"
yum -y install automake autoconf libarchive-devel openssl-devel libuuid-devel git valgrind vim-enhanced

# Things from EPEL
yum -y install epel-release
yum -y install golang

