# Carthage build fail w/ realm-cocoa 95.3

Get the following error when trying to build realm-cocoa 95.3 with carthage 0.8

```sh
*** Downloading realm-cocoa at "v0.95.3"
Failed to write to /Users/greg/test_realm953_carthage/Carthage/Build/iOS/Realm.framework: Error Domain=NSCocoaErrorDomain Code=516 "“strip-frameworks.sh” couldn’t be copied to “Realm.framework” because an item with the same name already exists." UserInfo={NSSourceFilePathErrorKey=/private/var/folders/bp/mdmhbyj1723_z5jvwnf6p_fw0000gn/T/carthage-archive.QKH7Dg/Carthage/Build/iOS/Realm.framework/strip-frameworks.sh, NSUserStringVariant=(
    Copy
), NSDestinationFilePath=/Users/greg/test_realm953_carthage/Carthage/Build/iOS/Realm.framework/strip-frameworks.sh, NSFilePath=/private/var/folders/bp/mdmhbyj1723_z5jvwnf6p_fw0000gn/T/carthage-archive.QKH7Dg/Carthage/Build/iOS/Realm.framework/strip-frameworks.sh, NSUnderlyingError=0x7fcc0862a010 {Error Domain=NSPOSIXErrorDomain Code=17 "File exists"}}
```

To repro 
```sh
git clone https://github.com/GregIngelmo/test_realm953_carthage
> ./test_carthage_build.sh
```

Complete log

```sh
greg@Kemist-MacBook-Pro-15 [0] > git checkout realm-cocoa-95-2 > /dev/null
HEAD is now at 4c46ff1... Add osx info

greg@Kemist-MacBook-Pro-15 [0] > ./test_carthage_build.sh
OS X:
ProductName:    Mac OS X
ProductVersion: 10.11
BuildVersion:   15A284

Cathag:
0.8.0

Xcode:
Xcode 7.0.1
Build version 7A1001
Apple Swift version 2.0 (swiftlang-700.0.59 clang-700.0.72)
Target: x86_64-apple-darwin15.0.0

Run Cathage
+ rm -fr Carthage
+ rm -fr /Users/greg/Library/Caches/org.carthage.CarthageKit
+ carthage update
*** Cloning realm-cocoa
*** Downloading realm-cocoa at "v0.95.2"
*** xcodebuild output can be found in /var/folders/bp/mdmhbyj1723_z5jvwnf6p_fw0000gn/T/carthage-xcodebuild.u4XSrl.log

greg@Kemist-MacBook-Pro-15 [0] > git checkout realm-cocoa-95-3 > /dev/null
Previous HEAD position was 4c46ff1... Add osx info
HEAD is now at 562eacd... Update to realm-cocoa 95.3

greg@Kemist-MacBook-Pro-15 [0] > ./test_carthage_build.sh
OS X:
ProductName:    Mac OS X
ProductVersion: 10.11
BuildVersion:   15A284

Cathag:
0.8.0

Xcode:
Xcode 7.0.1
Build version 7A1001
Apple Swift version 2.0 (swiftlang-700.0.59 clang-700.0.72)
Target: x86_64-apple-darwin15.0.0

Run Cathage
+ rm -fr Carthage
+ rm -fr /Users/greg/Library/Caches/org.carthage.CarthageKit
+ carthage update
*** Cloning realm-cocoa
*** Downloading realm-cocoa at "v0.95.3"
Failed to write to /Users/greg/test_realm953_carthage/Carthage/Build/iOS/Realm.framework: Error Domain=NSCocoaErrorDomain Code=516 "“strip-frameworks.sh” couldn’t be copied to “Realm.framework” because an item with the same name already exists." UserInfo={NSSourceFilePathErrorKey=/private/var/folders/bp/mdmhbyj1723_z5jvwnf6p_fw0000gn/T/carthage-archive.QKH7Dg/Carthage/Build/iOS/Realm.framework/strip-frameworks.sh, NSUserStringVariant=(
    Copy
), NSDestinationFilePath=/Users/greg/test_realm953_carthage/Carthage/Build/iOS/Realm.framework/strip-frameworks.sh, NSFilePath=/private/var/folders/bp/mdmhbyj1723_z5jvwnf6p_fw0000gn/T/carthage-archive.QKH7Dg/Carthage/Build/iOS/Realm.framework/strip-frameworks.sh, NSUnderlyingError=0x7fcc0862a010 {Error Domain=NSPOSIXErrorDomain Code=17 "File exists"}}

greg@Kemist-MacBook-Pro-15 [1] >

