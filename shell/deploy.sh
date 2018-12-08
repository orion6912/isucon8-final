#!/bin/sh

set -eu

echo 'deploy start...' | /home/ec2-user/isucon8-final/shell/slack.sh 

# git
cd /home/ec2-user/isucon8-final
git pull

# docker
docker-compose -f /home/ec2-user/isucon8-final/webapp/docker-compose.yml -f /home/ec2-user/isucon8-final/webapp/docker-compose.go.yml down
# docker-compose -f /home/ec2-user/isucon8-final/webapp/docker-compose.yml -f /home/ec2-user/isucon8-final/webapp/docker-compose.go.yml build
docker-compose -f /home/ec2-user/isucon8-final/webapp/docker-compose.yml -f /home/ec2-user/isucon8-final/webapp/docker-compose.go.yml up -d


echo 'deploy finish!!!' | /home/ec2-user/isucon8-final/shell/slack.sh 