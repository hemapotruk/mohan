#!/bin/bash
Get_VPC() {
	echo "running the function to list vpcs in $1"
    vpc_list=$(aws ec2 describe-vpcs --region $1 | jq .Vpcs[].VpcId | tr -d '"')
    for vpc in $(echo $vpc_list); do
    echo "the vpc id is:$vpc"
    echo "======================================"
 done
 
 }
 Get_VPC $REGIONS
