1. Configure oVs

2. apt-get install uml-utilities

3. sudo apt-get install p7zip-full

4. sudo apt-get install cpu-checker ( TO CHECK CPU VIRTUALIZATION)

5. sudo apt-get install python-simplejson python-qt4 python-zopeinterface python-twisted-conch automake autoconf gcc kvm uml-utilities virt-manager qemu-kvm kvm-pxe uml-utilities

6. sudo apt-get install qemu-kvm libvirt-bin ubuntu-vm-builder bridge-utils

7. http://libvirt.org/sources/libvirt-1.2.11.tar.gz

8. libyajl heders: http://launchpadlibrarian.net/84767368/libyajl-dev_1.0.12-2_amd64.deb

9. libxml2: git clone git://git.gnome.org/libxml2
            sudo apt-get install libxml2-dev
            sudo apt-get install libdevmapper-dev 
            sudo apt-get install libpciaccess-dev
            sudo apt-get install libnl-dev 
 bnl-dev
           ./autogen.sh --prefix=/usr
           ./configure ; make ; make install 

etables

sudo apt-get install qemu-kvm libvirt-bin ubuntu-vm-builder bridge-utils

10. oz-tool to build the fedora guest vms
    http://www.leaseweblabs.com/2013/12/vm-template-creation-oz-install/
    mkdir oz
    cd oz
    git clone https://github.com/clalancette/oz.git oz-git 
    apt-get install python-all
    apt-get -f install

****apt-get install autopoint python-dev libxslt-dev
    sudo apt-get install xsltproc 
    apt-get install libxml-xpath-perl 
    make -k //disable warnings

************************************************************
libvirtd & is used to start the daemon 
RFC 4122 can be used to generate 16-digit unique number to be used as UUID

      Three algorithms to generate UUIDs: the
      first leverages the unique values of 802 MAC addresses to
      guarantee uniqueness, the second uses pseudo-random number
      generators, and the third uses cryptographic hashing and
      application-provided text strings

http://www.areteix.net/blog/2013/03/open-vswitch-fatal-error-inserting-brcompat_mod/

Correct usage

ovsdb-server --remote=punix:/usr/local/var/run/openvswitch/db.sock \
                     --remote=db:Open_vSwitch,Open_vSwitch,manager_options \
                     --private-key=db:Open_vSwitch,SSL,private_key \
                     --certificate=db:Open_vSwitch,SSL,certificate \
                     --bootstrap-ca-cert=db:Open_vSwitch,SSL,ca_cert \
                     --pidfile --detach


virsh --connect qemu:///system

http://virt-tools.org/learning/install-with-command-line/
Configuration that worked: https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/6/html/Virtualization_Administration_Guide/section-libvirt-dom-xml-example.html


apt-get install sasl2-bin

apt-get install fluxbox tightvncserver libfdt-dev libsdl-dev

http://www.virtualopensystems.com/en/solutions/guides/kvm-svirt-omap5/

sudo apt-get install dchroot debootstrap

apt-get install libguestfs-tools

virsh console VM returning char ^]

virt-install -r 1024 --accelerate -n Fedora14 \
  -f /path/to/guest.img \
  --cdrom Fedora-14-x86_64-Live.iso

apt-get install virt-viewer

************Fedora grub changes*****************
https://ask.fedoraproject.org/en/question/6985/how-to-setup-serial-port-in-fedora-16/

***********Ubuntu grub changes****************
http://www.jaredlog.com/?p=1484

***********Convert iso to img to create bootable host*********
http://virt-tools.org/learning/install-with-command-line/

*********Ubuntu Minimal**********
https://help.ubuntu.com/community/Installation/MinimalCD

dd if=/dev/zero of=ubuntu-min.img bs=1M count=256

************iptables dependency of libvirt************
/lib/modules/3.14.32/build/net/ipv4/netfilter/iptable_filter.ko
Check bridge.sh


*********Exynos bug libvirt**********
https://bugs.launchpad.net/linaro-ubuntu/+bug/1255382

Tex Works
http://askubuntu.com/questions/457323/easy-way-to-install-tex-live-and-tex-studio-in-ubuntu-12-04
