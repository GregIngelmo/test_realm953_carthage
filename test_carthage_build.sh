#!/bin/sh
echo "OS X:"
sw_vers
echo "\nCathag:"
carthage version
echo "\nXcode:"
xcodebuild -version
xcrun swift -version
echo ""

# Clean Carthage dirs
echo "Run Cathage"
set -x 
rm -fr Carthage 2> /dev/null
rm -fr ~/Library/Caches/org.carthage.CarthageKit 2> /dev/null

carthage update
