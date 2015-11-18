#!/bin/bash

echo "Delete exited container...."
exited_container=`docker ps -a | grep Exited`
if [ -n "$exited_container" ] ; then
 echo $exited_container | awk '{print $1}' | xargs docker rm
fi
echo "ok."


echo "Delete intermediate images...."
none_images=`docker images | grep "<none>" `
if [ -n "$none_images" ] ; then
 echo $none_images | awk '{print $1}' | xargs docker rm
fi
echo "ok."


df -h
