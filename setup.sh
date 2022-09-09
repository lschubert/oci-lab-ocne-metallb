#!/bin/bash
export ANSIBLE_HOST_KEY_CHECKING=False
export ANSIBLE_STDOUT_CALLBACK=debug
if [[ $# == 1 ]] && [[ $1 == "local" ]]; then
  ansible-playbook setup.yml
else
  ansible-playbook setup.yml
  ansible-playbook setup.yml -i hosts
fi
