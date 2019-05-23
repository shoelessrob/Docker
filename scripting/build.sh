#!/bin/sh

cp -R ~/.aws .
#docker build --no-cache -t shoelessrob/scripting:v1 .
docker build -t shoelessrob/scripting:v1 .
rm -Rf .aws
