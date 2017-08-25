FROM resin/rpi-raspbian:latest

run echo 'deb http://mirrordirector.raspbian.org/raspbian/ jessie main contrib non-free rpi' > /etc/apt/sources.list

RUN apt-get update
RUN apt-get upgrade
RUN apt-get install bind9 --fix-missing

#CMD /etc/init.d/mosquitto start && tail -f /dev/null
CMD tail -f /dev/null
