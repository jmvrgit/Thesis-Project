yum install -y git podman python3 pip
pip3 install -y podman-compose
git pull https://github.com/jmvrgit/Thesis-Project.git
cd Thesis-Project
sysctl net.ipv4.ip_unprivileged_port_start=80 #open port for rootless
podman-compose up