build:
	sudo docker image build . -t ryuichiueda/ros-camera-server
run:
	sudo docker container run -p 8080:8080 --device=/dev/video0:/dev/video0 -t ryuichiueda/ros-camera-server
stop:
	sudo docker container stop `sudo docker container list | grep ros-camera-server | sed 's;ryuichiueda/ros-camera-server.*;;'`
