#!/bin/bash

## Change to the dir where the script is located and
# get the full name into a variable
cd "$(dirname $0)" ||exit
#WORK_DIR="$(pwd)"

## Exit if already running
ps -ef | grep -v grep | grep slave.jar && exit

## Change the variables to match your config
HOST="http://jenkins.local:8080/computer/Slave_Bash_01/slave-agent.jnlp"
SECRET="8e7b82d83c652dc59479e22628b94281356f802249daef24fb44ddf21507999b"

## Starts in background
java -jar slave.jar \
  -jnlpUrl "$HOST" \
  -secret "$SECRET" \
  &> slave.log &
