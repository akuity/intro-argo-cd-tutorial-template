#!/bin/bash

echo "post-start start" >> ~/status.log

# this runs in background each time the container starts

# Ensure kubeconfig is set up. 
k3d kubeconfig merge dev --kubeconfig-merge-default

bash .devcontainer/update-repo-for-workshop.sh

# Best effort env load
source ~/.bashrc

echo "post-start complete" >> ~/status.log
