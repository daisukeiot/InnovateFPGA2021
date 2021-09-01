resize2fs /dev/mmcblk0p2 && \
apt update && \
apt upgrade -y && \
apt dist-upgrade -y && \
apt autoremove -y && \
apt install -y update-manager-core