#!/usr/bin/env bash


# 1. Download/update roles
ansible-galaxy install -r requirements.yaml -p ./roles

# 2. Execute dry run
ansible-playbook -i inventory k8s_package.yaml --check