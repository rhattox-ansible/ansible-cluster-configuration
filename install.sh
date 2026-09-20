#!/usr/bin/env bash

# 0. Clean up
rm -rf roles/

# 1. Download/update roles
ansible-galaxy install -r requirements.yaml -p ./roles

# 2. Execute dry run
# ansible-playbook -i hosts k8s_package.yaml --check
ansible-playbook -i hosts k8s_package.yaml --ask-pass -K
