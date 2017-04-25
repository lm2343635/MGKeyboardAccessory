# MGKeyboardAccessory [![CI Status](http://img.shields.io/travis/limeng/MGKeyboardAccessory.svg?style=flat)](https://travis-ci.org/limeng/MGKeyboardAccessory) [![Version](https://img.shields.io/cocoapods/v/MGKeyboardAccessory.svg?style=flat)](http://cocoapods.org/pods/MGKeyboardAccessory) [![License](https://img.shields.io/cocoapods/l/MGKeyboardAccessory.svg?style=flat)](http://cocoapods.org/pods/MGKeyboardAccessory) [![Platform](https://img.shields.io/cocoapods/p/MGKeyboardAccessory.svg?style=flat)](http://cocoapods.org/pods/MGKeyboardAccessory)

MGKeyboardAccessory is a keyboard accessory to input special text to text field directly. Itallows developer to add the custom button with text in keyboard accessory, text in the button will be inserted to text field if the button is clicked.

![MGKeyboardAccessory](https://raw.githubusercontent.com/lm2343635/MGKeyboardAccessory/master/screenshot/demo.png)

## Features
- Support custom text in the button.
- Support two styles: defualt and dark.

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

MGKeyboardAccessory is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "MGKeyboardAccessory"
```

## How to use
Build and import the module:

```swift
import MGKeyboardAccessory
```

It is very simple to add a keyboard accessoray for text field. In our demo, we added a black style accessoray:

```swift
blackTextField.setupKeyboardAccessory([":", "/", "\""], barStyle: .black)
```

The first parameter is a string array to create custom button, the second parameter is the bar style. Use **UIBarStyle** provided by UIKit directly.


## Change log

- v0.1.1
	- Fix the issue about the width of keyboard accessory.

## Author

Meng Li, http://fczm.pw, lm2343635@126.com

## License

MGKeyboardAccessory is available under the MIT license. See the LICENSE file for more info.
