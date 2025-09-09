# Jenkins.Dockerfile
FROM jenkins/jenkins:lts

USER root

# install docker cli, docker-compose plugin, git, curl
RUN apt-get update && \
    apt-get install -y docker.io jq curl git && \
    rm -rf /var/lib/apt/lists/*

# ensure jenkins user can use docker
RUN usermod -aG docker jenkins

USER jenkins

