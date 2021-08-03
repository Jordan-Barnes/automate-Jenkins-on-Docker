FROM jenkins/jenkins:2.289.3-lts-jdk11
USER root
RUN apt-get update && apt-get install -y apt-transport-https \
       ca-certificates curl gnupg2 \
       software-properties-common
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN apt-key fingerprint 0EBFCD88
RUN add-apt-repository \
       "deb [arch=amd64] https://download.docker.com/linux/debian \
       $(lsb_release -cs) stable"
RUN apt-get update && apt-get install -y docker-ce-cli
USER jenkins
COPY --chown=jenkins:jenkins plugins.txt /var/jenkins_home/plugins.txt
RUN jenkins-plugin-cli --plugin-file /var/jenkins_home/plugins.txt
COPY casc.yml /var/jenkins_home/casc.yml
