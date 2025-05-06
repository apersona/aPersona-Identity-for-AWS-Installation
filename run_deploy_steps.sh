#!/bin/bash

echo "New change for version xx"
REPO_BASE=https://github.com/apersona/

APERSONAIDP_LOCAL_NAME=aPersona-Identity-for-AWS-End-User-Services
APERSONAADM_LOCAL_NAME=aPersona-Identity-for-AWS-Admin-Portal

#install NODE NPM GIT
NVM_VER=v0.39.7
NPM_VER=11.0.0

rm -rf .nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/$NVM_VER/install.sh | bash
source ~/.bashrc
echo "install nvm "$NVM_VER
nvm install --lts >/dev/null

 #install git
echo "install git"
sudo yum update -y >/dev/null
sudo yum install git -y >/dev/null

 #update npm
echo "install npm v"$NPM_VER
npm install -g npm@$NPM_VER >/dev/null
npm install -g aws-cdk >/dev/null

#download code repo
echo "clone the repo $REPO_BASE$APERSONAIDP_REPO_NAME"
git clone $REPO_BASE$APERSONAIDP_REPO_NAME $APERSONAIDP_LOCAL_NAME
echo "clone the repo $REPO_BASE$APERSONAADM_REPO_NAME"
git clone $REPO_BASE$APERSONAADM_REPO_NAME $APERSONAADM_LOCAL_NAME
cd $APERSONAIDP_LOCAL_NAME
git pull
cp ./config.sh ../
cp ./uninstall.sh ../
cp ./$UPDATE_SCRIPT_NAME ../update.sh
cd ..
cd $APERSONAADM_LOCAL_NAME
git pull
