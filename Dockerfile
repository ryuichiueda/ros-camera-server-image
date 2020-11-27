FROM ryuichiueda/ubuntu18.04-ros-image

ENTRYPOINT ["/bin/bash","-c"]
COPY ["bashrc", "/root/.bashrc"]
COPY ["exec.bash", "/root/exec.bash"]
RUN source /root/.bashrc
RUN cd catkin_ws/src
RUN apt-get update
RUN apt-get install -y ros-melodic-cv-camera
RUN apt-get install -y ros-melodic-web-video-server

RUN ["chmod", "+x", "/root/exec.bash"]
CMD ["/root/exec.bash"]
