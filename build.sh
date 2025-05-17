#!/bin/bash

# Create build directory
mkdir -p build/Release-iphoneos

# Compile Swift files
xcrun -sdk iphoneos swiftc \
    AppDelegate.swift \
    -target arm64-apple-ios14.0 \
    -emit-executable \
    -o build/Release-iphoneos/FullscreenWebApp

# Create app bundle structure
mkdir -p build/Release-iphoneos/FullscreenWebApp.app
cp build/Release-iphoneos/FullscreenWebApp build/Release-iphoneos/FullscreenWebApp.app/
cp Info.plist build/Release-iphoneos/FullscreenWebApp.app/

# Create IPA
cd build/Release-iphoneos
mkdir -p Payload
cp -r FullscreenWebApp.app Payload/
zip -r FullscreenWebApp.ipa Payload
rm -rf Payload

echo "Build completed. IPA file is at build/Release-iphoneos/FullscreenWebApp.ipa" 