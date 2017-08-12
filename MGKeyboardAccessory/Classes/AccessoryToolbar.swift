//
//  AccessoryToolbar.swift
//  MGKeyboardAccessory
//
//  Created by Meng Li on 12/08/2017.
//
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

class AccessoryToolbar: UIToolbar {
    
    private var textInput: UITextInput!
    
    public init(_ strings: [String], barStyle: UIBarStyle, forTextInput: UITextInput) {
        super.init(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 35))
        self.textInput = forTextInput;
        self.barStyle = barStyle;
        let buttonColor = (barStyle == .default) ? UIColor.darkGray : UIColor.white
        let clearButtonItem = UIBarButtonItem(barButtonSystemItem: .trash,
                                              target: self,
                                              action: #selector(clearTextFeild))
        clearButtonItem.tintColor = buttonColor
        let spaceButtonItem = UIBarButtonItem(barButtonSystemItem: .flexibleSpace,
                                              target: self,
                                              action: nil)
        let doneButtonItem = UIBarButtonItem(barButtonSystemItem: .done,
                                             target: self,
                                             action: #selector(editFinish))
        doneButtonItem.width = 150;
        doneButtonItem.tintColor = buttonColor
        
        let items = [clearButtonItem,
                     spaceButtonItem,
                     createStringBarButtonItem(strings: strings,
                                               color:  buttonColor,
                                               action: #selector(addText(_:)),
                                               height: 26),
                     spaceButtonItem,
                     doneButtonItem]
        self.setItems(items, animated: false)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func createStringBarButtonItem(strings: [String], color: UIColor, action: Selector, height: CGFloat) -> UIBarButtonItem {
        let buttonsView = UIScrollView()
        var x: CGFloat = 0
        var width: CGFloat = 0
        for string in strings {
            let stringButton: UIButton = {
                let button = UIButton(type: .custom)
                button.setTitle(string, for: .normal)
                width = button.sizeThatFits(CGSize.init(width: CGFloat.greatestFiniteMagnitude, height: height)).width
                if width > height * 1.2 {
                    width += height / 4;
                }
                button.frame = CGRect(x: x, y: 0, width: width, height: height)
                button.layer.cornerRadius = 5
                button.layer.borderWidth = 1
                button.layer.borderColor = color.cgColor
                button.tintColor = color
                button.setTitleColor(color, for: .normal)
                button.addTarget(target, action: action, for: .touchUpInside)
                return button
            }()
            buttonsView.addSubview(stringButton)
            x = x + 2 + width
        }
        // If button width is larger than the max avaliable width for all character buttons,
        // set screen width - 110 as button width.
        var buttonWidth = x - 2
        if UIScreen.main.bounds.width - 110 < buttonWidth {
            buttonWidth = UIScreen.main.bounds.width - 110
        }
        buttonsView.frame = CGRect(x: 0, y: 0, width: buttonWidth, height: height)
        buttonsView.contentSize = CGSize(width: x - 2, height: 0)
        buttonsView.showsHorizontalScrollIndicator = false
        let characterButtonItem = UIBarButtonItem(customView: buttonsView)
        return characterButtonItem
    }
    
    func addText(_ sender: UIButton) {
        if textInput.isMember(of: UITextField.self){
            let textFiled = textInput as! UITextField
            textFiled.insertText((sender.titleLabel?.text)!)
        }
        if textInput.isMember(of: UITextView.self) {
            let textView = textInput as! UITextView
            textView.insertText((sender.titleLabel?.text)!)
        }
    }
    
    func editFinish() {
        if textInput.isMember(of: UITextField.self){
            let textFiled = textInput as! UITextField
            if textFiled.isFirstResponder {
                textFiled.resignFirstResponder()
            }
        }
        if textInput.isMember(of: UITextView.self){
            let textView = textInput as! UITextView
            if textView.isFirstResponder {
                textView.resignFirstResponder()
            }
        }
    }
    
    func clearTextFeild() {
        if textInput.isMember(of: UITextField.self){
            let textFiled = textInput as! UITextField
            if textFiled.isFirstResponder {
                textFiled.text = ""
            }
        }
        if textInput.isMember(of: UITextView.self){
            let textView = textInput as! UITextView
            if textView.isFirstResponder {
                textView.text = ""
            }
        }
    }
    
}
