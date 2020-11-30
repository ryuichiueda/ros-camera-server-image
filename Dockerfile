FROM ryuichiueda/ubuntu18.04-ros-image

COPY ["exec.bash", "/root/exec.bash"]

RUN apt-get update
RUN apt-get install -y ros-melodic-cv-camera
RUN apt-get install -y ros-melodic-web-video-server

RUN chmod +x /root/exec.bash
CMD ["/root/exec.bash"]
