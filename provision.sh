sudo apt-get update -y
sudo apt-get install -y \
	gcc \
	pkg-config \
	openssl \
	libasound2-dev \
	cmake \
	build-essential \
	python3 \
	libfreetype6-dev \
	libexpat1-dev \
	libxcb-composite0-dev \
	libssl-dev \
	libvulkan-dev \
	mesa-vulkan-drivers \
	vulkan-utils \
	libx11-dev \
	x11-xserver-utils \
	x11-apps \
	xvfb \
	xdm \
	xfonts-base \
	mesa-utils \
	fluxbox \
	xterm
sudo touch /etc/X11/xdm/Xservers
sudo chmod 777 /etc/X11/xdm/Xservers
echo ":0 local /usr/X11R6/bin/Xvfb -dpi 100 -screen 1024x768x16" >> /etc/X11/xdm/Xservers
curl https://sh.rustup.rs -sSf | sh -s -- -y