#!/bin/bash
set -e

while getopts a:t: option
do
 case "${option}"
 in
 a) APP_NAME=${OPTARG};;
 t) IMAGE_TAG=${OPTARG};;
 esac
done

cd $HOME/ansible/kube-cluster
ansible-playbook -i hosts --vault-password-file=~/oli all-apps.pb.yml --tags "$APP_NAME" --extra-vars "app_image_tag=$IMAGE_TAG"
