sudo useradd -m adminuser
echo adminuser | passwd adminuser --stdin
sudo usermod -a -G sudo adminuser #sudo get
# sudo passwd adminuser 123

#lubos 
sudo useradd -m poweruser 
sudo passwd -d poweruser #del pass
usermod -a -G sudo poweruser #sudo get
echo 'poweruser ALL=(ALL:ALL) /usr/sbin/iptables' >> /etc/sudoers
#sudo iptables -L # open uptables

# iptables -t filter --append INPUT -j DROP

#setfacl -m g:poweruser:rx /home/adminuser
#find / -perm /4000
