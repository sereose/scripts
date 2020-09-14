#!/usr/bin/env bash

version=$1

if [[ -z "$version" ]]
then
    version="11"
fi

sudo add-apt-repository --yes ppa:openjdk-r/ppa
sudo apt-get update
sudo apt-get install "openjdk-$version-jdk"
