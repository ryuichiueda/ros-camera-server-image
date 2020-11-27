build:
	sudo docker image build . -t ros_camera_server
run:
	sudo docker container run -p 8080:8080 --device=/dev/video0:/dev/video0 -t ros_camera_server
stop:
	sudo docker container stop `sudo docker container list | awk /ros_camera_server/ | sed 's/ros_camera_server.*//'`
