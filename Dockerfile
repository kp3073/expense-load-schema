FROM        docker.io/redhat/ubi8
COPY        mongo.repo /etc/yum.repos.d/mongo.repo
RUN         yum install git mysql  -y
COPY        run.sh /
ENTRYPOINT  ["bash", "/run.sh"]