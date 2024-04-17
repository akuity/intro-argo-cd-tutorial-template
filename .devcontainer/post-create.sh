#!/bin/bash

echo "post-create start" >> ~/.status.log

# this runs in background after UI is available

kind create cluster --name dev

echo 'source <(kubectl completion bash)' >> /home/vscode/.bashrc
echo 'source <(akuity completion bash)' >> /home/vscode/.bashrc
echo 'source <(argocd completion bash)' >> /home/vscode/.bashrc
echo 'source <(kustomize completion bash)' >> /home/vscode/.bashrc
echo 'source <(kind completion bash)' >> /home/vscode/.bashrc
echo 'alias k="kubectl"' >> /home/vscode/.bashrc
echo 'complete -F __start_kubectl k' >> /home/vscode/.bashrc

echo "post-create complete" >> ~/.status.log
