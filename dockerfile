FROM ubuntu
MAINTAINER navin
RUN apt-get update
RUN apt-get install openssh-server -y
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
Run echo 'root:root123' | chpasswd
Run mkdir /var/run/sshd
CMD ["/usr/sbin/sshd", "-D"]
EXPOSE 22
