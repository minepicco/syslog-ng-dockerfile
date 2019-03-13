From ubuntu:18.04

RUN apt-get update && apt-get install syslog-ng -y

ENTRYPOINT ["sh", "-c", "/etc/init.d/syslog-ng start", "BACKGROUND"]
EXPOSE 514 514/udp
