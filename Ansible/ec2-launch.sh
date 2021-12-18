#!/bin/bash

#1. Create a Spot Instance
#2. Take take instance IP and register in DNS

#aws ec2 request-spot-instances --instance-count 1 --type "persistent" --launch-specification #file://spot.json --tag-specifications "ResourceType=spot-instances-request,Tags=[{Key=Name,#Value=frontend}]" | jq
#TEMP_ID="lt-06e98f843b7024a45"
#TEMP_VER=3
TEMP_ID="lt-08d5aa9e8bc287ac7"
TEMP_VER=1
aws ec2 run-instances --launch-template LaunchTemplateId=${TEMP_ID},Version=${TEMP_VER} | jq