#!/bin/bash
# Sript which backs up world directory from mc server

MC_PATH="/home/docker/mc"

dir_sum() {
  local sum=$(find $1 -type f -exec md5sum {} + | sort | sed s/\ .*\// | md5sum)
  echo $sum
}

if [[ ! -d ${MC_PATH}/backups ]]; then
  mkdir ${MC_PATH}/backups
fi

if [[ $(dir_sum "${MC_PATH}/world") != $(dir_sum "${MC_PATH}/backups/world") ]]; then
  cp -r ${MC_PATH}/world ${MC_PATH}/backups
fi