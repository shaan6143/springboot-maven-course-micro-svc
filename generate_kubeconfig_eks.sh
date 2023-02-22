#!/bin/bash

set -x -o errexit -o pipefail

# generate kubeconfig
echo "Generating kubeconfig for ${eks_cluster_name}"
aws eks update-kubeconfig \
    --name "${eks_cluster_name}" \
    --kubeconfig "${KUBECONFIG}"

echo "KUBECONFIG saved to ${KUBECONFIG}"
