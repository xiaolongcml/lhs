# FullscreenWebApp

A simple iOS application that opens a specified URL in fullscreen mode using WKWebView.

## Requirements

- Xcode 14.0 or later
- iOS 14.0 or later
- Swift 5.0

## Setup

1. Open the project in Xcode by double-clicking the `FullscreenWebApp.xcodeproj` file
2. Select your development team in the project settings
3. Choose a target device or simulator
4. Build and run the project

## Features

- Fullscreen web view
- Portrait orientation lock
- Automatic loading of the specified URL
- Support for modern web content

## Security

The app includes permissions for loading web content over HTTP and HTTPS. The `NSAllowsArbitraryLoads` setting is enabled in Info.plist to allow loading of content from all domains. 