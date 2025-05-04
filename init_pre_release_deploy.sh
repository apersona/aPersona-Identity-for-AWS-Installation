#!/bin/bash

#project code repo
export APERSONAIDP_REPO_NAME=Pre-Release-aPersona-Identity-for-AWS-End-User-Services
export APERSONAADM_REPO_NAME=Pre-Release-aPersona-Identity-for-AWS-Admin-Portal
export UPDATE_SCRIPT_NAME="update_pre-release.sh"

echo "About to run deploy steps with APERSONAIDP_REPO_NAME:$APERSONAIDP_REPO_NAME"
bash run_deploy_steps.sh
echo "Completed running the deployment steps"