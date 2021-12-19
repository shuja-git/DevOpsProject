#!/bin/bash

#1. Create a Spot Instance
#2. Take take instance IP and register in DNS

#aws ec2 request-spot-instances --instance-count 1 --type "persistent" --launch-specification #file://spot.json --tag-specifications "ResourceType=spot-instances-request,Tags=[{Key=Name,#Value=frontend}]" | jq
#TEMP_ID="lt-06e98f843b7024a45"
#TEMP_VER=3
ID="lt-08d5aa9e8bc287ac7"
VER=2
aws ec2 run-instances --launch-template LaunchTemplateId=${ID},Version=${VER} --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=frontend}]" "ResourceType=spot-instance-request,Tags=[{Key=Name,Value=frontend}]" | jq

#TEMPL_ID="lt-06e98f843b7024a45"
#TEMPL_VER=3
#aws ec2 run-instances --launch-template LaunchTemplateId=${TEMPL_ID},Version=${TEMPL_VER} | jq
#aws ec2 modify-launch-template --launch-template-id "lt-06e98f843b7024a45" --default-version "3" --region "us-east-1"