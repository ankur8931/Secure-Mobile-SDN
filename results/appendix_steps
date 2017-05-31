Appendix: Setting up Host Environment System

[]Ref : https://wiki.linaro.org/ZiShenLim/sandbox/SettingUpKVM

sudo apt-get install -y gcc-arm-linux-gnueabihf
sudo apt-get install -y qemu qemu-user qemu-user-static
sudo apt-get install -y debootstrap

export KVMHOST_ROOT=$PWD/arm-precise-root
sudo qemu-debootstrap --arch=armhf precise ./arm-precise-root

sudo chroot ./arm-precise-root

In chroot:

passwd

echo kvmhost > /etc/hostname

sed -e 's/tty1/ttySAC2/g' -e 's/38400/115200/g' /etc/init/tty1.conf > /etc/init/ttySAC2.conf

cat >> etc/securetty <<END

# Arndale serial port
ttySAC2

END

cat > /etc/apt/sources.list <<END
deb http://ports.ubuntu.com/ precise main restricted universe
deb-src http://ports.ubuntu.com/ precise main restricted universe
END

apt-get update
locale-gen en_US.UTF-8
dpkg-reconfigure locales
apt-get install -y ssh
apt-get install -y gcc make
apt-get install -y xorg fluxbox tightvncserver
apt-get clean

mkdir /guest
chmod 777 /guest

exit
---------------------------------------------------------
On x86 host

sudo apt-get install -y pkg-config-arm-linux-gnueabihf

cat | sudo tee /etc/apt/sources.list.d/armhf-precise.list <<END
deb [arch=armhf] http://ports.ubuntu.com/ubuntu-ports precise main restricted universe multiverse
deb-src [arch=armhf] http://ports.ubuntu.com/ubuntu-ports precise main restricted universe multiverse
END

apt-get install xapt

sudo xapt -a armhf -m -b zlib1g-dev libglib2.0-dev libfdt-dev libpixman-1-dev
sudo dpkg -i /var/lib/xapt/output/*.deb

git clone git://git.qemu.org/qemu.git

cd qemu

git checkout -b v1.6.0 v1.6.0

git submodule update --init dtc

mkdir build; cd build

export PATH=/root/gcc-linaro-arm-linux-gnueabihf-4.7-2013.03-20130313_linux/bin:$PATH

sudo apt-get install -y gcc-arm-linux-gnueabihf
sudo apt-get install -y qemu qemu-user qemu-user-static

../configure --cross-prefix=arm-linux-gnueabihf- --target-list=arm-softmmu --enable-kvm --audio-drv-list="" --enable-fdt --static

ERROR: zlib check failed
       Make sure to have the zlib libs and headers installed

Soln: http://askubuntu.com/questions/335875/error-zlib-check-failed-while-compiling-qemu

sudo apt-get --no-install-recommends -y build-dep qemu

sudo apt-get install zlib1g-dev

Soln: https://theintobooks.wordpress.com/2012/10/30/installing-qemu/

sudo apt-get install zlib1g-dev
sudo apt-get install libglib2.0
sudo apt-get install autoconf
sudo apt-get install libtool
sudo apt-get install libsdl-console
sudo apt-get install libsdl-console-dev

apt-get instal libssh2-php

http://wiki.qemu.org/Hosts/Linux


make
----------------------------------------------
Boot and Kernel

cd linux-linaro-lng

export CROSS_COMPILE=arm-linux-gnueabihf-
export ARCH=arm

mkdir ../lll-kvmhost
./scripts/kconfig/merge_config.sh -O ../lll-kvmhost/ linaro/configs/linaro-base.conf linaro/configs/distribution.conf linaro/configs/kvm-host.conf linaro/configs/arndale.conf linaro/configs/ovs.conf

make O=../lll-kvmhost/ uImage dtbs modules

cp -t /tftpboot/ ../lll-kvmhost/arch/arm/boot/uImage ../lll-kvmhost/arch/arm/boot/dts/exynos5250-arndale.dtb

sudo make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- O=../lll-kvmhost/ INSTALL_MOD_PATH=${KVMHOST_ROOT} modules_install

$ env edit bootargs
$     root=/dev/mmcblk1p1 rw rootwait earlyprintk console=ttySAC2,115200n8 --no-log
$ env edit bootcmd
$     mmc read 40007000 451 3000;mmc read 42000000 3451 100;bootm 40007000 - 42000000
$ env save
$ boot

======================================
sudo apt-get install python-simplejson python-qt4 python-zopeinterface python-twisted-conch automake autoconf gcc kvm uml-utilities virt-manager qemu-kvm kvm-pxe uml-utilities

Error: apt-get install libtool

Error in make: make -C /lib/...

bc not found

https://www.raspberrypi.org/forums/viewtopic.php?p=451503


sudo apt-get install bc

make

make install

vxlan - apt-get install ncurses-dev

device drivers/ vxlan




==========================================
brctl addbr virbr0 = Requirement for virsh

virsh --list all

https://gist.github.com/bdsatish/7476239

Cannot get Domain ID for Images

http://askubuntu.com/questions/138140/how-do-i-install-qemu

apt-get install qemu, qemu-system


https://www.redhat.com/archives/libvirt-users/2012-January/msg00040.html

http://serverfault.com/questions/366691/how-to-start-compiling-linux-in-a-kvm-virtual-machine

===========================================

MSR Tools are needed to enable virtualization

https://wiki.linaro.org/Platform/DevPlatform/CrossCompile/CrossbuildingQuickStart

https://wiki.debian.org/EmdebianToolchain



