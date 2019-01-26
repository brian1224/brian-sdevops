#!/bin/bash
if [ `docker ps | grep tiger | wc -l`  = 1 ]
then
        docker stop tiger
        docker rm  tiger
fi
