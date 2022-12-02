sudo useradd -m adminuser
ADMINPASSWD=$(openssl rand -base64 12)
echo "Warning! This password shown last time: $ADMINPASSWD"
echo 'adminuser:$ADMINPASSWD' | chpasswd # change user adminuser password to newpassword 
sudo usermod -a -G sudo adminuser #sudo get
# sudo passwd adminuser 123

#lubos 
useradd -m poweruser 
sudo passwd -d poweruser #del pass
#usermod -a -G sudo poweruser #sudo get
echo 'poweruser ALL=(ALL:ALL) /usr/sbin/iptables' > /etc/sudoers
ln -s /home/poweruser/etc/mtab softlink # open uptables

# iptables -t filter --append INPUT -j DROP

#setfacl -m g:poweruser:rx /home/adminuser
#find / -perm /4000
