# openshift4-infra


**To be prettified:**

This will set up htpasswd:

1) clone https://github.com/huddlesj/openshift4-infra.git
2) cd openshift4-infra/clusters/on-prem

Make sure you're logged into your cluster for these steps:
	
3) htpasswd -c -B -b users.htpasswd username password	
4) oc create secret generic htpass-secret --from-file=htpasswd=</path/to/users.htpasswd> -n openshift-config


Lastly run this script which will: install galaxy and create basic htpasswd auth:

./bin/applier.sh
