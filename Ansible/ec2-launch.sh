#!/bin/bash

#1. Create a Spot Instance
#2. Take take instance IP and register in DNS

# check if instance is already there

aws ec2 describe-instances --filters "Name=tag:Name,Values=frontend" | jq .Reservations[].Instances[].State.Name | sed 's/"//g' | grep -E 'running|stopped' &>/dev/null
if [ $? -eq 0 ]; then
  echo "Instance is already there"
  exit
fi


ID="lt-08d5aa9e8bc287ac7"
VER=2
aws ec2 run-instances --launch-template LaunchTemplateId=${ID},Version=${VER} --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=frontend}]" "ResourceType=spot-instances-request,Tags=[{Key=Name,Value=frontend}]" | jq

