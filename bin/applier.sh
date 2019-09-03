#!/bin/bash

# Install galaxy
ansible-galaxy install -r requirements.yml -p galaxy

# Run applier
ansible-playbook -i .applier/ galaxy/openshift-applier/playbooks/openshift-cluster-seed.yml


