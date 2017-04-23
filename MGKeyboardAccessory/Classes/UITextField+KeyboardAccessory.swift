import Foundation

public extension UITextField {

    func setCloseKeyboardAccessoryForSender(_ strings: [String]) {
        let topView: UIToolbar = {
            let view = UIToolbar.init(frame: CGRect(x: 0, y: 0, width: self.frame.size.width, height: 35))
            view.barStyle = .black;
//            let clearButtonItem = UIBarButtonItem(title: NSLocalizedString("clear_name", comment: ""),
//                                                  style: UIBarButtonItemStyle.plain,
//                                                  target: self,
//                                                  action: #selector(clearTextFeild))
//            clearButtonItem.tintColor = UIColor.white
            
            
            let spaceButtonItem = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
            
            
//            let doneButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(editFinish))
//            doneButtonItem.tintColor = UIColor.white
            
//            var items = [clearButtonItem, spaceButtonItem]
            var items = [spaceButtonItem]
            for string in strings {
                items.append(createStringBarButtonItem(string: string,
                                                          action: #selector(addCharacter(_:)),
                                                          height: 26))
            }
            items.append(spaceButtonItem)
//            items.append(doneButtonItem)
            view.setItems(items, animated: false)
            
            return view
        }()
        
        self.inputAccessoryView = topView
    }
    
    func createStringBarButtonItem(string: String, action: Selector, height: CGFloat) -> UIBarButtonItem {
        let stringButton: UIButton = {
            let button = UIButton(type: .custom)
            button.setTitle(string, for: .normal)
            var width = button.sizeThatFits(CGSize.init(width: CGFloat.greatestFiniteMagnitude, height: height)).width
            if width > height {
                width += height / 4;
            }
            button.frame = CGRect(x: 2, y: 2, width: width, height: height)
            button.layer.cornerRadius = 5
            button.layer.borderWidth = 1
            button.layer.borderColor = UIColor.white.cgColor
            
            button.tintColor = UIColor.white
            button.addTarget(target, action: action, for: .touchUpInside)
            
            return button
        }()
        let characterButtonItem = UIBarButtonItem(customView: stringButton)
        return characterButtonItem
    }
    
    func addCharacter(_ sender: UIButton) {

    }
    
}
