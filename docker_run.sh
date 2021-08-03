export JENKINS_HOME=/var/jenkins_home
export REF=/usr/share/jenkins/ref
export CASC_JENKINS_CONFIG=$JENKINS_HOME/casc.yml

export JENKINS_ADMIN_ID=admin
export JENKINS_ADMIN_PASSWORD=toor


docker-compose "$@"
