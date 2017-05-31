APPENDIX BENCHMARK HP PC

http://packages.ubuntu.com/lucid/amd64/netperf/download

We will use netperf as a benchmarking tool to check performance of HP based PC against Exynos 5250 Arndale Board.
We will check the performance on start of oVS and on running instances of guest VMs on top of host VMs.

iperf and GUI tool jperf can be used for a system with GUI enabled.

cat /proc/cpuinfo 



NETCAT TEST:

pNIC - pNIC netcat bandwidth test

HP Machine: nc -v -l 2222 > /dev/null

kvmhost: dd if=/dev/zero bs=1024K count=512 | nc -v $IP_OF_FIRST_MACHINE 2222

SRC: http://trilug.org/~bfarrow/talks/iperf-Bill-Farrow-2013.pdf
     https://jbowes.wordpress.com/2010/10/13/measuring-network-speeds-with-netcat-and-dd/


Server: nc -v -l 2222 > /dev/null
Connection Accepted [tcp/*]

Client:

dd if=/dev/zero bs=1024K count=256 | nc -v 10.218.111.64 2222
Connection to 10.218.111.64 2222 port [tcp/*] succeeded!
256+0 records in
256+0 records out
268435456 bytes (268 MB) copied, 22.9152 s, 11.7 MB/s

OPENVSWITCH ON HP

Src: http://networkstatic.net/installing-open-vswitch-with-kvm/

Go to openvswitch-2.3.1 folder

./configure

make

make install

insmod datapath/linux/openvswitch.ko

lsmod | grep bridge

rmmod bridge

mkdir -p /usr/local/etc/openvswitch

ovsdb-tool create /usr/local/etc/openvswitch/conf.db vswitchd/vswitch.ovsschema
                                                                               
ovsdb-server --remote=punix:/usr/local/var/run/openvswitch/db.sock \           
                     --remote=db:Open_vSwitch,Open_vSwitch,manager_options \   
                     --private-key=db:Open_vSwitch,SSL,private_key \           
                     --certificate=db:Open_vSwitch,SSL,certificate \           
                     --bootstrap-ca-cert=db:Open_vSwitch,SSL,ca_cert \         
                     --pidfile --detach                                        
                                                                               
ovs-vsctl --no-wait init                                                       
                                                                               
ovs-vswitchd --pidfile --detach

------------------------------------------------------------------------
With ovs running on the HP system, we would now test the performance statistics of vNIC-pNIC cards over ovs after running the
KVM centOS VMs on the top of ovs.

We download the minimal iso image of centos from source : 

http://mirrors.loosefoot.com/centos/7/isos/x86_64/CentOS-7-x86_64-Minimal-1503-01.iso

We will download the minimal image of fedora as well :

https://dl.fedoraproject.org/pub/fedora/linux/releases/20/Fedora/x86_64/iso/

Download the netinstall release

===apt-get install p7zip zip unzip======


------------------------------------------
wget --save-cookies cookies.txt --post-data 'username=achaud16&password=ankur8931' \
                                               http://www.virtualopensystems.com/logintrml/

====Another Tutorial KVM =================
http://blog.flexvdi.com/2014/07/28/enabling-kvm-virtualization-on-arm-allwinner-a20/

XEN Approach: http://www-archive.xenproject.org/files/xensummit_seoul11/nov2/2_XSAsia11_JGoodacre_HW_accelerated_virtualization_in_the_ARM_Cortex_processors.pdf

GitHub Link: https://github.com/virtualopensystems/linux-kvm-arm

git: remove + sign at end

TUNCTL===http://www.packetcoreit.com/tag/ubuntu-tunctl/

wget --save-cookies cookies.txt --post-data 'username=youruname&password=yourpw' \
                                               http://www.virtualopensystems.com/logintrml/
 


