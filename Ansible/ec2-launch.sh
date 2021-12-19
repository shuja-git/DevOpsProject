#!/bin/bash

#1. Create a Spot Instance
#2. Take take instance IP and register in DNS

if [ -z "$1" ]; then
  echo -e "\e[1;31mInput is missing\e[0m"
  exit 1
fi

COMPONENT=$1

# check if instance is already there

aws ec2 describe-instances --filters "Name=tag:Name,Values=${COMPONENT}" | jq .Reservations[].Instances[].State.Name | sed 's/"//g' | grep -E 'running|stopped' &>/dev/null
if [ $? -eq 0 ]; then
  echo -e "\e[1;33mInstance is already there\e[0m"
  exit
fi


ID="lt-08d5aa9e8bc287ac7"
VER=2
aws ec2 run-instances --launch-template LaunchTemplateId=${ID},Version=${VER} --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=${COMPONENT}}]" "ResourceType=spot-instances-request,Tags=[{Key=Name,Value=${COMPONENT}}]" | jq

