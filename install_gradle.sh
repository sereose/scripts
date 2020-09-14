#!/usr/bin/env bash

version=$1
target="/opt/gradle"

if [[ -z "$version" ]]
then
    version="6.0.1"
fi

echo "Installing gradle $version"

#download
wget "https://services.gradle.org/distributions/gradle-$version-bin.zip" --directory-prefix "/tmp"
unzip "/tmp/gradle-$version-bin.zip" -d "/tmp"

# uninstall previous
if [[ -e "$target" ]]; then
    sudo unlink "$target"
fi

# install to opt
sudo mv "/tmp/gradle-$version" "/opt"
sudo ln -s "/opt/gradle-$version" "$target"

#clean up
rm "/tmp/gradle-$version-bin.zip"
