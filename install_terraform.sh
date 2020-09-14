#!/usr/bin/env bash

version=$1

if [[ -z "$version" ]]
then
    version="0.12.0"
fi

distribution="terraform_${version}_linux_amd64.zip"

echo "Installing terraform $version"

wget "https://releases.hashicorp.com/terraform/$version/$distribution" --directory-prefix "/tmp"
unzip "/tmp/$distribution" -d "/tmp"
sudo mv "/tmp/terraform" "/usr/local/bin/"
rm "/tmp/$distribution"
