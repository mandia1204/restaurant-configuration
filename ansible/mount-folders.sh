#!/bin/bash
# sudo ./mount-folders.sh (run in ansible host)
# should be configure in vmware shared folders with the same name in command: .host:/{name}
vmhgfs-fuse .host:/k8s $HOME/k8s/ -o allow_other
vmhgfs-fuse .host:/deploy $HOME/deploy/ -o allow_other
vmhgfs-fuse .host:/ansible $HOME/ansible/ -o allow_other
