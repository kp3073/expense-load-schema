FROM        docker.io/redhat/ubi8
RUN         yum install git mysql  -y
COPY        run.sh /
ENTRYPOINT  ["bash", "/run.sh"]