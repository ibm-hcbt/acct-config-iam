#!/bin/bash

ibmcloud login -apikey $IC_API_KEY
export SERVICEID_API_KEY=$(ibmcloud iam service-api-key-create partner-sandbox-api-key $SERVICEID | awk '/API Key/{print $3}') 
echo "Service ID API Key: $SERVICEID_API_KEY"
ibmcloud login --apikey $SERVICEID_API_KEY -g $RESOURCE_GROUP
ibmcloud ks api-key reset --region $REGION
