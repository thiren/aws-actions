#!/bin/sh

set -e

# Extract the base64 encoded config data and write this to the KUBECONFIG
echo "$KUBE_CONFIG_DATA" | base64 --decode > /tmp/config
export KUBECONFIG=/tmp/config

echo "##[warning] This actions has been deprecated in favor of https://github.com/Azure/k8s-actions or the run action.  This repo has been archived and will be made private on 12/31/2019"

sh -c "kubectl $*"
