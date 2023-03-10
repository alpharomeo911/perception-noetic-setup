cd ~/Downloads
sudo apt-get update
sudo apt-get upgrade
##
## Comment this line if there's no Nvidia GPU available for the laptop, won't install cuda and tensorflow stuff.
wget -nv -O- https://lambdalabs.com/install-lambda-stack.sh | sh -
##
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt install curl # if you haven't already installed curl
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
sudo apt update
sudo apt install ros-noetic-desktop-full
echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
source ~/.bashrc