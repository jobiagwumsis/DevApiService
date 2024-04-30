# Use the official Jenkins LTS image from Docker Hub
FROM jenkins/jenkins:lts

# Skip the setup wizard and set other production-level settings
ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false -Djava.awt.headless=true"

# Install necessary plugins
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

# Optionally configure Jenkins initial settings and scripts
COPY init.groovy.d/ /usr/share/jenkins/ref/init.groovy.d/
