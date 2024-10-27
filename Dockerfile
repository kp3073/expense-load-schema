FROM        docker.io/centos:8
COPY        mongo.repo /etc/yum.repos.d/mongo.repo
RUN         dnf install git mysql mongodb-org-shell -y
COPY        run.sh /
ENTRYPOINT  ["bash", "/run.sh"]