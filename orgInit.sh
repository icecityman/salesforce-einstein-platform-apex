#!/bin/bash
sfdx force:org:create -s -f config/project-scratch-def.json -d 1
sfdx force:source:push
# custom settings setup.  Modify for your username
sfdx force:user:permset:assign -n Einstein_Platform_Playground
sfdx force:data:record:create -s Einstein_Settings__c -v "Einstein_EMail__c='shane.mclaughlin@salesforce.com' CertName__c=key2einstein"

# sample records for testing dataset generation
sfdx force:data:tree:import -f data/Account.json

sfdx force:org:open -p /one/one.app#/setup/CertificatesAndKeysManagement/home