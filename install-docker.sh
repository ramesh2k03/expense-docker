R="\[31m"
N="\[0m"
yum install -y yum-utils
yum-config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo
sudo yum install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
sudo systemctl start docker
systemctl enable docker 
usermod -aG docker ec2-user
echo -e "$R logout and login again $N"