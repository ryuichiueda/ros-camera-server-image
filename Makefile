build:
	sudo docker image build . -t ros-camera-server
run:
	sudo docker container run -p 8080:8080 --device=/dev/video0:/dev/video0 -t ros-camera-server
stop:
	sudo docker container stop `sudo docker container list | awk /ros-camera-server/ | sed 's/ros-camera-server.*//'`
