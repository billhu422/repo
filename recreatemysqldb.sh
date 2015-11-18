#! /bin/bash

docker stop mysqldb
docker rm mysqldb
docker run -it -p 10568:80 --name mysqldb 54.223.152.184:10580/env:wso2_v1.3 /bin/bash
exit
docker start mysqldb
docker exec -it mysqldb
service mysql start

