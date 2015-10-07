#!/bin/sh
echo "**************"
xcodebuild -version
xcrun swift -version
echo "**************"

# Clean Carthage dirs
set -x 
rm -fr Carthage 2> /dev/null
rm -fr ~/Library/Caches/org.carthage.CarthageKit 2> /dev/null

carthage update
