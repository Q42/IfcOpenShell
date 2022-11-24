#!/bin/bash

set -e

SCHEME="ALL_BUILD"

echo "==> Archiving for iOS..."
xcodebuild archive \
-project IfcOpenShell.xcodeproj \
-scheme ALL_BUILD \
-destination "generic/platform=iOS" \
-archivePath "xcarchives/IfcOpenShell-iOS.xcarchive" \
SKIP_INSTALL=NO \
BUILD_LIBRARY_FOR_DISTRIBUTION=YES

# xcodebuild archive \
# -project IfcOpenShell.xcodeproj \
# -scheme ALL_BUILD \
# -destination 'generic/platform=macOS,arch=arm64' \
# -archivePath "IfcOpenShell-macOS.xcarchive" \
# SKIP_INSTALL=NO \
# BUILD_LIBRARY_FOR_DISTRIBUTION=YES

# libtool

# xcodebuild -create-xcframework \
# -library xcarchives/IfcOpenShell-iOS.xcarchive/Products/usr/local/lib/occt.a \
# -headers xcheaders/opencascade \
# -library occt-simulator.a \
# -headers xcheaders/opencascade \
# -output xcframeworks/occt.xcframework