#podman
sudo yum install -y git podman python3 pip
pip3 install podman-compose
sudo su; echo "net.ipv4.ip_unprivileged_port_start=80" > /etc/sysctl.d/rootless-80.conf
git clone https://github.com/jmvrgit/Thesis-Project.git
cd Thesis-Project; podman-compose up

#Docker
yum install -y git docker
systemctl enable docker
systemctl start docker
usermod -aG docker ec2-user
newgrp docker
sudo curl -SL https://github.com/docker/compose/releases/download/v2.23.0/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose
sudo chmod 755 /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
git clone https://github.com/jmvrgit/Thesis-Project.git
cd Thesis-Project; docker-compose up

#AWS
#!/bin/bash
yum install -y git docker
systemctl enable docker
systemctl start docker
sudo curl -SL https://github.com/docker/compose/releases/download/v2.23.0/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose
sudo chmod 755 /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

#! once installed
usermod -aG docker ec2-user
newgrp docker
git clone https://github.com/jmvrgit/Thesis-Project.git
cd Thesis-Project; docker-compose up
