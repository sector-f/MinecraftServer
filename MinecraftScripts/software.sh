#!/bin/bash
echo "Would you like to install all the software for MinecraftSever 1.17?"
#included software Java 16 & Minecraft Server software & clamav & ufw & playit.gg
#FYI you need to accept and go into ELU and accept the agreement for the offical Minecraft Server Software
sudo -i
sudo apt-get update
sudo  apt-get upgrade
cd ~
mkdir MinecraftServer
cd MinecraftServer
wget https://github.com/AdoptOpenJDK/openjdk16-binaries/releases/download/jdk16u-2021-05-08-12-45/OpenJDK16U-jdk_arm_linux_hotspot_2021-05-08-12-45.tar.gz
tar xzf OpenJDK16U-jdk_arm_linux_hotspot_2021-05-08-12-45.tar.gz
export PATH=$PWD/jdk-16.0.1+4/bin:$PATH
java -version
wget https://launcher.mojang.com/v1/objects/0a269b5f2c5b93b1712d0f5dc43b6182b9ab254e/server.jar
sudo apt install clamav
clamscan
sudo apt install ufw
sudo ufw enable
sudo ufw allow 22
sudo ufw allow 25565
wget https://playit.gg/downloads/playit-armv7-0.4.3-rc2
chmod +x playit-linux_64-0.4.3-rc2
./playit-linux_64-0.4.3-rc2
sudo reboot 