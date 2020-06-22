#Execute as Root
#Sudo Setup
apt -qqy install sudo
adduser adminitt sudo
echo "adminitt  ALL=(ALL) NOPASSWD:ALL" | tee /etc/sudoers.d/adminitt

#Hyper-V Tools
apt-get -qqy install hyperv-daemons
echo "" >> /etc/initramfs-tools/modules
echo "# Hyper-V Modules" >> /etc/initramfs-tools/modules
echo "hv_vmbus" >> /etc/initramfs-tools/modules
echo "hv_storvsc" >> /etc/initramfs-tools/modules
echo "hv_blkvsc" >> /etc/initramfs-tools/modules
echo "hv_netvsc" >> /etc/initramfs-tools/modules
echo "hv_balloon" >> /etc/initramfs-tools/modules
echo "hv_utils" >> /etc/initramfs-tools/modules
update-initramfs -u

reboot
