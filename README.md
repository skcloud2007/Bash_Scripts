# Bash_Scripts
## This repo is my notebook which will help me in revision and troubleshooting

### Table of Content

adding some interview scripting questions

### FInd the log over 500MB and older than 48 Hours
`find /path_to_search_logs/ -type f -name "*.log" -size +500M -mtime 2`

### Wget command use case
`sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key`
`-O == Where to place`  then from where to pull
