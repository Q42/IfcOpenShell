#!/bin/bash
set -e

mkdir Vendor
cd Vendor

curl -L -O "https://github.com/Q42/OCCT/releases/download/2022-11-21-dev/occt.xcframework.zip"
unzip "occt.xcframework.zip"

# TODO: Download compiled boost frameworks and unzip them