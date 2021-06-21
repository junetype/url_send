#! /bin/bash
printf "Installing RDP Be Patience... " >&2
{
sudo useradd -m URLSEND
sudo adduser URLSEND sudo
echo 'URLSEND:passwd1!' | sudo chpasswd
sudo apt update
sudo apt-get update
sudo wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb 
sudo dpkg --install chrome-remote-desktop_current_amd64.deb \n
 sudo DEBIAN_FRONTEND=noninteractive sudo apt install -y --fix-broken 
sudo DEBIAN_FRONTEND=noninteractive apt install -y xfce4 desktop-base 
sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/xfce4-session" > /etc/chrome-remote-desktop-session' 
sudo apt install -y xscreensaver 
sudo groupadd chrome-remote-desktop 
sudo usermod -a -G chrome-remote-desktop $USER 
} &> /dev/null &&
printf "\nSetup Complete " >&2 ||
printf "\nError Occured " >&2
printf '\nCheck https://remotedesktop.google.com/headless  Copy Command Of Debian Linux And Paste Down\n'
read -p "Paste Here: " CRP
su - URLSEND -c """$CRP"""
printf 'Check https://remotedesktop.google.com/access/ \n\n'
if sudo apt-get upgrade &> /dev/null
then
    printf "\n\nUpgrade Completed " >&2
else
    printf "\n\nError Occured " >&2
fi

