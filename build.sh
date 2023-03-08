#!/bin/sh

set -e

VERSION="release/3.16.2"

git clone --depth=1 --branch="${VERSION}" https://github.com/navermaps/NMapsMap.git

mv NMapsMap/framework/NMapsMap.xcframework NMapsMap.xcframework

zip -r NMapsMap.xcframework.zip NMapsMap.xcframework -x \*.DS_Store

rm -rf NMapsMap.xcframework

rm -rf NMapsMap

swift package compute-checksum NMapsMap.xcframework.zip
