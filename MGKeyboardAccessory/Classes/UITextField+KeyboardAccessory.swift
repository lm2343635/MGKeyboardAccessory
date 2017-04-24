import Foundation

public extension UITextField {

    func setupKeyboardAccessory(_ strings: [String], barStyle: UIBarStyle) {
        let buttonColor = (barStyle == .default) ? UIColor.darkGray : UIColor.white
        
        let topView: UIToolbar = {
            let view = UIToolbar.init(frame: CGRect(x: 0, y: 0, width: self.frame.size.width, height: 35))
            view.barStyle = barStyle;
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
            doneButtonItem.tintColor = buttonColor
            
            var items = [clearButtonItem, spaceButtonItem]
            for string in strings {
                items.append(createStringBarButtonItem(string: string,
                                                       color:  buttonColor,
                                                       action: #selector(addText(_:)),
                                                       height: 26))
            }
            items.append(spaceButtonItem)
            items.append(doneButtonItem)
            view.setItems(items, animated: false)
            
            return view
        }()
        
        self.inputAccessoryView = topView
    }
    
    func createStringBarButtonItem(string: String, color: UIColor, action: Selector, height: CGFloat) -> UIBarButtonItem {
        let stringButton: UIButton = {
            let button = UIButton(type: .custom)
            button.setTitle(string, for: .normal)
            var width = button.sizeThatFits(CGSize.init(width: CGFloat.greatestFiniteMagnitude, height: height)).width
            if width > height * 1.2 {
                width += height / 4;
            }
            button.frame = CGRect(x: 2, y: 2, width: width, height: height)
            button.layer.cornerRadius = 5
            button.layer.borderWidth = 1
            button.layer.borderColor = color.cgColor
            button.tintColor = color
            button.setTitleColor(color, for: .normal)
            button.addTarget(target, action: action, for: .touchUpInside)
            return button
        }()
        let characterButtonItem = UIBarButtonItem(customView: stringButton)
        return characterButtonItem
    }
    
    func addText(_ sender: UIButton) {
        self.insertText((sender.titleLabel?.text)!)
    }
    
    func editFinish() {
        if self.isFirstResponder {
            self.resignFirstResponder()
        }
    }
    
    func clearTextFeild() {
        if self.isFirstResponder {
            self.text = ""
        }
    }
    
}
