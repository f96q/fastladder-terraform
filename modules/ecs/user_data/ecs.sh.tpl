#!/bin/bash

yum -y install aws-cli

mkdir -p /ecs/${fastladder}-mysql
aws s3 cp s3://${fastladder}/fastladder.sql /ecs/${fastladder}-mysql/fastladder.sql

echo ECS_CLUSTER=${fastladder} >> /etc/ecs/ecs.config
