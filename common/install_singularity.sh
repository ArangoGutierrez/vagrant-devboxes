SINGULARITY_RELEASE=2.4

cd /home/vagrant
mkdir Git
cd Git

# Release suid
git clone https://github.com/singularityware/singularity.git release
cd release
git checkout release-${SINGULARITY_RELEASE}
./autogen.sh
./configure --prefix=/home/vagrant/singularity-${SINGULARITY_RELEASE}
make
sudo make install

#
cd /home/vagrant/Git
#

# Release nosuid
git clone https://github.com/singularityware/singularity.git release-nosuid
cd release-nosuid
git checkout release-${SINGULARITY_RELEASE}
./autogen.sh
./configure --prefix=/home/vagrant/singularity-${SINGULARITY_RELEASE}-nosuid --disable-suid
make
make install

#
cd /home/vagrant/Git
#

# Dev suid
git clone https://github.com/singularityware/singularity.git development
cd development
git checkout development
./autogen.sh
./configure --prefix=/home/vagrant/singularity-development
make
sudo make install

#
cd /home/vagrant/Git
#

# Release nosuid
git clone https://github.com/singularityware/singularity.git development-nosuid
cd development-nosuid
git checkout development
./autogen.sh
./configure --prefix=/home/vagrant/singularity-development-nosuid --disable-suid
make
make install
