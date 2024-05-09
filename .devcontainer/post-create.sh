#!/bin/bash

echo "post-create start" >> ~/.status.log

# this runs in background after UI is available

kind create cluster --name dev

echo "post-create complete" >> ~/.status.log
