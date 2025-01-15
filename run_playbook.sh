#!/bin/bash
ansible-playbook --user=stf --ask-become-pass -i staging.zmajevac.xyz, infra/deploy-playbook.yaml -bK