#!/bin/bash

echo "post-create start" >> ~/.status.log

# this runs in background after UI is available

k3d cluster create --config .devcontainer/k3d-dev.yaml --wait | tee -a ~/.status.log

echo "post-create complete" >> ~/.status.log
