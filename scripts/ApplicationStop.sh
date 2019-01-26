#!/bin/bash
if [ `docker ps | grep cc104-devops | wc -l`  = 1 ]
then
        docker stop cc104-devops
        docker rm  cc104-devops
fi
