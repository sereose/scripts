#!/usr/bin/env bash

version=$1
arch=$2

if [[ -z "$version" ]]
then
    version="3.3.0"
fi
if [[ -z "$arch" ]]
then
    arch="linux-amd64"
fi

echo "Installing helm $version"

wget "https://get.helm.sh/helm-v$version-$arch.tar.gz" --directory-prefix "/tmp"
tar -xvzf "/tmp/helm-v$version-$arch.tar.gz" --directory "/tmp"

sudo mv "/tmp/$arch/helm" "/usr/local/bin/"
rm "/tmp/helm-v$version-$arch.tar.gz"
rm -rf "/tmp/$arch"
