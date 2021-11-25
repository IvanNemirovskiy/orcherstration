#!/bin/bash

which -s argocd
if [[ $? != 0 ]]; then
    echo "installing argocd"
    brew install argocd
    echo "argocd successfully installed"
else
    echo "argocd already installed"
fi

kubectl -n argocd get deployments | grep argocd-dex-server
if [[ $? == 0 ]]; then
  echo "argocd already configured in k8s cluster"
else
  echo "creating configure for argocd"
  kubectl create namespace argocd
  kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
fi