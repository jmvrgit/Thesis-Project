echo "installing git podman python 3 pip"
yum install -y git podman python3 pip
echo "installing git podman-compose"
pip3 install podman-compose
echo "pulling project"
git pull https://github.com/jmvrgit/Thesis-Project.git
cd Thesis-Project
echo "Rootless mode for port 80"
sysctl net.ipv4.ip_unprivileged_port_start=80 #open port for rootless
echo "Bringing images up"
podman-compose up