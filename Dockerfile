FROM        docker.io/centos:8
RUN         sed -i s/mirror.centos.org/vault.centos.org/g /etc/yum.repos.d/CentOS-*.repo
RUN         sed -i s/^#.*baseurl=http/baseurl=http/g /etc/yum.repos.d/CentOS-*.repo
RUN         sed -i s/^mirrorlist=http/#mirrorlist=http/g /etc/yum.repos.d/CentOS-*.repo
COPY        mongo.repo /etc/yum.repos.d/mongo.repo
RUN         yum install git mysql mongodb-org-shell -y
COPY        run.sh /
ENTRYPOINT  ["bash", "-x","/run.sh"]