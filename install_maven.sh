#!/usr/bin/env bash

version=$1
target="/opt/maven"

if [[ -z "$version" ]]
then
    version="3.6.3"
fi

echo "Installing maven $version"

#download
wget "http://ftp-stud.hs-esslingen.de/pub/Mirrors/ftp.apache.org/dist/maven/maven-3/$version/binaries/apache-maven-$version-bin.tar.gz" --directory-prefix "/tmp"
tar -xvzf "/tmp/apache-maven-$version-bin.tar.gz" --directory "/tmp"

# uninstall previous
if [[ -e "$target" ]]; then
    sudo unlink "$target"
fi

# install to opt
sudo mv "/tmp/apache-maven-$version" "/opt"
sudo ln -s "/opt/apache-maven-$version" "$target"

#clean up
rm "/tmp/apache-maven-$version-bin.tar.gz"
