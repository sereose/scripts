#!/usr/bin/env bash

sdk install java 8.0.242.hs-adpt
sdk install java 11.0.6.hs-adpt
sdk install java 14.0.0.hs-adpt
sdk install maven 3.6.3
sdk install gradle 6.3

#sdk install scala 2.13.1
#sdk install sbt 1.3.9

#sdk install visualvm 2.0

sdk flush archives
