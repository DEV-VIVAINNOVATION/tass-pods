#!/bin/sh

set -e

NMAPVER="release/3.16.2"
NLOGINVER="v4.1.5"
NGEOMETRYVER="release/1.0.1"

git clone --depth=1 --branch="${NMAPVER}" https://github.com/navermaps/NMapsMap.git

mv NMapsMap/framework/NMapsMap.xcframework NMapsMap.xcframework

zip -r NMapsMap.xcframework.zip NMapsMap.xcframework -x \*.DS_Store

rm -rf NMapsMap.xcframework

rm -rf NMapsMap

git clone --depth=1 --branch="${NLOGINVER}" https://github.com/naver/naveridlogin-sdk-ios.git

mv naveridlogin-sdk-ios/NaverThirdPartyLogin.xcframework NaverThirdPartyLogin.xcframework

zip -r NaverThirdPartyLogin.xcframework.zip NaverThirdPartyLogin.xcframework

rm -rf NaverThirdPartyLogin.xcframework

rm -rf naveridlogin-sdk-ios

git clone --depth=1 --branch="${NGEOMETRYVER}" https://github.com/navermaps/NMapsGeometry.git

mv NMapsGeometry/framework/NMapsGeometry.xcframework NMapsGeometry.xcframework

zip -r NMapsGeometry.xcframework.zip NMapsGeometry.xcframework -x \*.DS_Store

rm -rf NMapsGeometry.xcframework

rm -rf NMapsGeometry

swift package compute-checksum NMapsMap.xcframework.zip
swift package compute-checksum NMapsGeometry.xcframework.zip
swift package compute-checksum NaverThirdPartyLogin.xcframework.zip
