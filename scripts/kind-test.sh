#!/bin/sh

apk add --no-cache curl musl-dev git go

export GOROOT=/usr/lib/go
export GOPATH=/go
export PATH=/go/bin:$PATH

mkdir -p ${GOPATH}/src ${GOPATH}/bin

go get sigs.k8s.io/kind

curl -L https://storage.googleapis.com/kubernetes-release/release/v1.13.0/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl
chmod +x /usr/local/bin/kubectl

kind create cluster --name test

export KUBECONFIG="$(kind get kubeconfig-path --name="test")"

kubectl get pods --all-namespaces
