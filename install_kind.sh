#!/usr/bin/env bash

version=$1

if [[ -z "$version" ]]
then
    version="v0.8.1"
fi

echo "Installing kind $version"

sudo curl -L "https://kind.sigs.k8s.io/dl/$version/kind-$(uname -s)-amd64" -o /usr/local/bin/kind
sudo chmod 755 /usr/local/bin/kind
