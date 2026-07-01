# STEP-1: INSTALL GIT AND JAVA 21
sudo dnf install git java-21-amazon-corretto -y
# Verify Java
java -version
# STEP-2: ADD THE JENKINS REPOSITORY
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
# Import Jenkins GPG Key
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
# STEP-3: INSTALL JENKINS
sudo dnf install jenkins -y
# STEP-4: START AND ENABLE JENKINS
sudo systemctl enable jenkins
sudo systemctl start jenkins
# Check Jenkins Status
sudo systemctl status jenkins
