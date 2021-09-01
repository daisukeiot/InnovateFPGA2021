OVERLAY1='echo overlay.dtbo'
OVERLAY2='modprobe altvipfb'

mkdir ~/tmp && \
cd ~/tmp && \
cp /overlay/fpgaoverlay.sh /overlay/fpgaoverlay.sh.org && \
sed -i -e "s/$OVERLAY1/#$OVERLAY1/g" /overlay/fpgaoverlay.sh && \
sed -i -e "s/$OVERLAY2/#$OVERLAY2/g" /overlay/fpgaoverlay.sh && \
curl https://packages.microsoft.com/config/ubuntu/18.04/multiarch/prod.list > ./microsoft-prod.list && \
cp ./microsoft-prod.list /etc/apt/sources.list.d/ && \
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg && \
cp ./microsoft.gpg /etc/apt/trusted.gpg.d/ && \
apt-get update && \
apt-get install -y moby-engine && \
curl -L https://github.com/Azure/azure-iotedge/releases/download/1.2.3/aziot-identity-service_1.2.2-1_ubuntu18.04_armhf.deb -o aziot-identity-service.deb && \
curl -L https://github.com/Azure/azure-iotedge/releases/download/1.2.3/aziot-edge_1.2.3-1_ubuntu18.04_armhf.deb -o aziot-edge.deb && \
sudo apt-get install -y ./aziot-identity-service.deb ./aziot-edge.deb && \
cd ~ && \
rm -rf ~/tmp && \
cp /etc/aziot/config.toml.edge.template /etc/aziot/config.toml && \
nano /etc/aziot/config.toml 