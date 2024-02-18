#!/usr/bin/env bash

# 변수 정의 ###############################
OS="$(uname)"
case $OS in
Linux*)
  sleepCmd="sleep"
  ;;
WindowsNT*)
  sleepCmd="timeout /t"
  ;;
Darwin*)
  sleepCmd="sleep"
  ;;
MINGW*)
  sleepCmd="timeout /t"
  ;;
*) ;;
esac
#########################################

docker compose up -d

${sleepCmd} 3

npm run marp $1

docker compose down -t 1
