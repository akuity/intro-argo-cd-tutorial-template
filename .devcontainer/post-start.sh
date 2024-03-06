#!/bin/bash

echo "post-start start" >> ~/status.log

# this runs in background each time the container starts

kind export kubeconfig --name scale
source ~/.bashrc

bash hack/update-repo-for-workshop.sh

echo "post-start complete" >> ~/status.log
