FROM ubuntu:20.04

RUN     apt-get update && apt-get install -qqy x11-apps


ENV DEBIAN_FRONTEND=noninteractive

# adding user
RUN adduser code

# SET PASSWORD

# installing Dependencies
# RUN apt update && apt upgrade
# RUN apt-get update
# RUN apt install openssh-server -y
# RUN apt install xorg -y
# RUN apt install openbox -y
# RUN apt install dbus-x11 -y


# ENV
ENV DISPLAY=:0.0

# installing tools
# RUN apt install vim -y
# RUN apt install firefox -y
# RUN apt install gome-terminal -y
# RUN apt install vlc -y
RUN apt install gimp -y

EXPOSE 22

# ENTRYPOINT ["tail", "-f", "/dev/null"]
CMD xeyes