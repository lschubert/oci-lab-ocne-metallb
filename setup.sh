#!/bin/bash
export ANSIBLE_HOST_KEY_CHECKING=False
export ANSIBLE_STDOUT_CALLBACK=debug
ansible-playbook setup.yml
ansible-playbook setup.yml -i hosts
