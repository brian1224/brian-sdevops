#!/bin/bash

$(aws ecr get-login --no-include-email --registry-ids 204065533127 --region ap-northeast-1)

if [ `docker images | grep tiger | wc -l`  = 1 ]
then
        docker rmi 204065533127.dkr.ecr.ap-northeast-1.amazonaws.com/tiger:latest
        docker pull 204065533127.dkr.ecr.ap-northeast-1.amazonaws.com/tiger:latest
else
        docker pull 204065533127.dkr.ecr.ap-northeast-1.amazonaws.com/tiger:latest
fi
