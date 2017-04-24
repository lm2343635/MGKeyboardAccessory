# MGKeyboardAccessory

[![CI Status](http://img.shields.io/travis/limeng/MGKeyboardAccessory.svg?style=flat)](https://travis-ci.org/limeng/MGKeyboardAccessory)
[![Version](https://img.shields.io/cocoapods/v/MGKeyboardAccessory.svg?style=flat)](http://cocoapods.org/pods/MGKeyboardAccessory)
[![License](https://img.shields.io/cocoapods/l/MGKeyboardAccessory.svg?style=flat)](http://cocoapods.org/pods/MGKeyboardAccessory)
[![Platform](https://img.shields.io/cocoapods/p/MGKeyboardAccessory.svg?style=flat)](http://cocoapods.org/pods/MGKeyboardAccessory)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

MGKeyboardAccessory is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "MGKeyboardAccessory"
```

## How to use
It is very simple to add a keyboard accessoray for text field. In our demo, we added a black style accessoray:

```swift
blackTextField.setupKeyboardAccessory([":", "/", "\""], barStyle: .black)
```

The first parameter is a string array to create custom button, the second parameter is the bar style. Use **UIBarStyle** provided by UIKit directly.

## Author

Meng Li, http://fczm.pw, lm2343635@126.com

## License

MGKeyboardAccessory is available under the MIT license. See the LICENSE file for more info.
