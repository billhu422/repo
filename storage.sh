apt-get install lvm2 -y
apt-get install sysstat -y
apt-get install tree -y
umount /mnt
pvcreate /dev/xvdb /dev/xvdc
vgchange -y a lvmvg
lvcreate -L 120G -n lv_docker lvmvg
lvcreate -L 25G -n lv_mnt lvmvg
vgdisplay
mkfs.ext4 /dev/mapper/lvmvg-lv_docker
mkfs.ext4 /dev/mapper/lvmvg-lv_mnt
