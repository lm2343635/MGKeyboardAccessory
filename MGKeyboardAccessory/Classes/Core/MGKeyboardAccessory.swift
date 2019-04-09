//
//  MGKeyboardAccessory.swift
//  MGKeyboardAccessory
//
//  Created by Meng Li on 01/22/2017.
//  Copyright (c) 2019 MuShare. All rights reserved.
//

// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import Foundation

public extension UITextField {
    
    // Add keyboard accessory for text field.
    func setupKeyboardAccessory(_ strings: [String], barStyle: UIBarStyle) {
        inputAccessoryView = AccessoryToolbar.init(strings, barStyle: barStyle, forTextInput: self)
    }

}

public extension UITextView {
    
    // Add keyboard accessory for text view.
    func setupKeyboardAccessory(_ strings: [String], barStyle: UIBarStyle) {
        inputAccessoryView = AccessoryToolbar.init(strings, barStyle: barStyle, forTextInput: self)
    }
    
}
