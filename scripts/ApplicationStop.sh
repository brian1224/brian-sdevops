#!/bin/bash
if [ `docker ps | grep fat_tiger | wc -l`  = 1 ]
then
        docker stop fat_tiger
        docker rm  fat_tiger
fi
