FROM        docker.io/redhat/ubi8
RUN         dnf install git mysql  -y
COPY        run.sh /
ENTRYPOINT  ["bash", "/run.sh"]