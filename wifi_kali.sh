sudo apt-get update
sudo apt-get install linux-image-$(uname -r|sed 's,[^-]*-[^-]*-,,')
sudo apt-get install linux-headers-$(uname -r|sed 's,[^-]*-[^-]*-,,')
wget http://http.kali.org/kali/pool/main/l/linux/linux-kbuild-<VERSION>_amd64.deb
wget http://http.kali.org/kali/pool/main/l/linux/linux-headers-<VERSION>-common_<VERSION>_amd64.deb
wget http://http.kali.org/kali/pool/main/l/linux/linux-headers-<VERSION>-amd64_<VERSION>_amd64.deb
dpkg -i linux-kbuild-<VERSION>_amd64.deb
dpkg -i linux-headers-<VERSION>-common_<VERSION>_amd64.deb
dpkg -i linux-headers-<VERSION>-amd64_<VERSION>_amd64.deb
sudo apt-get install broadcom-sta-dkms
sudo modprobe -r b44 b43 b43legacy ssb brcmsmac bcma
sudo modprobe wl
sudo nano /etc/NetworkManager/NetworkManager.conf
