#!/bin/bash

echo "post-start start" >> ~/status.log

# this runs in background each time the container starts

kind export kubeconfig --name dev

bash hack/update-repo-for-workshop.sh

source ~/.bashrc

echo "post-start complete" >> ~/status.log
