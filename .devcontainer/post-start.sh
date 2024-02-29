#!/bin/bash

echo "post-start start" >> ~/status

# this runs in background each time the container starts

kind export kubeconfig --name scale
source ~/.bashrc

echo "post-start complete" >> ~/status
