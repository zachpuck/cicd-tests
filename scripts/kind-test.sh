#!/bin/sh

kind create cluster --wait=10m --loglevel=debug --name test

export KUBECONFIG="$(kind get kubeconfig-path --name="test")"

kubectl get pods --all-namespaces
