FROM        ddokken/centos-8
RUN         dnf install git mysql  -y
COPY        run.sh /
ENTRYPOINT  ["bash", "/run.sh"]