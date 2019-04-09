# MGKeyboardAccessory [![CI Status](http://img.shields.io/travis/lm2343635/MGKeyboardAccessory.svg?style=flat)](https://travis-ci.org/lm2343635/MGKeyboardAccessory) [![Version](https://img.shields.io/cocoapods/v/MGKeyboardAccessory.svg?style=flat)](http://cocoapods.org/pods/MGKeyboardAccessory) [![License](https://img.shields.io/cocoapods/l/MGKeyboardAccessory.svg?style=flat)](http://cocoapods.org/pods/MGKeyboardAccessory) [![Platform](https://img.shields.io/cocoapods/p/MGKeyboardAccessory.svg?style=flat)](http://cocoapods.org/pods/MGKeyboardAccessory)

MGKeyboardAccessory is a keyboard accessory to input special characters in UITextField or UI directly. It allows developers to add the custom button with characters in keyboard accessory, characters in the button will be
inserted to text field if the button is clicked.

![MGKeyboardAccessory](https://raw.githubusercontent.com/lm2343635/MGKeyboardAccessory/master/screenshot/demo.png)

## Features
- Support custom characters.
- Support two styles: defualt and dark.
- Support UITextField, UITextView and their subclasses.

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

MGKeyboardAccessory is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'MGKeyboardAccessory', '~> 0.4'
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

#### Reactive extension for RxSwift

MGKeyboardAccessory also supports reactive extension for RxSwift.

```Swift
Observable.just([":", "/", "?", "&", ".", "="])
    .bind(to: textView.rx.keyboardAccessoryStrings(style: .black)).disposed(by: disposeBag)
```

## Change log

- v0.1.1
	- Fix the issue about the width of keyboard accessory.

- v0.2
    - Support to scroll character buttons horizontally.

- v0.3
    - Support UITextView.

- v0.3.1
    - Fix the init issue of AccessoryToolbar.

- 0.3.2
	- Allow UITextView / UITextField subclasses. Thanks for the contribution from Dan2552.

- 0.4
	- Support Swift 4.

- 0.5
    - Support Swift 5.0.
    - Support reactive extension for RxSwift.
    
## Author

Meng Li, http://www.fczm.pw, lm2343635@126.com

## License

MGKeyboardAccessory is available under the MIT license. See the LICENSE file for more info.


