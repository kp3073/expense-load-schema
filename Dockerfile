FROM        docker.io/redhat/ubi9
RUN         dnf install mongodb-mongosh mysql git -y
COPY        run.sh /
ENTRYPOINT  ["bash", "/run.sh"]