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
                items.append(createCharacterBarButtonItem(character: string,
                                                         
                                                          action: #selector(addCharacter(_:)),
                                                          width: 26))
            }
            items.append(spaceButtonItem)
//            items.append(doneButtonItem)
            view.setItems(items, animated: false)
            
            return view
        }()
        
        self.inputAccessoryView = topView
    }
    
    func createCharacterBarButtonItem(character: String, action: Selector, width: CGFloat) -> UIBarButtonItem {
        let characterButton: UIButton = {
            let button = UIButton(frame: CGRect(x: 2, y: 2, width: width, height: 26))
            button.layer.cornerRadius = 5
            button.layer.borderWidth = 1
            button.layer.borderColor = UIColor.white.cgColor
            button.setTitle(character, for: .normal)
            button.tintColor = UIColor.white
//            button.backgroundColor = RGB(DesignColor.nagivation.rawValue)
//            button.addTarget(target, action: action, for: .touchUpInside)
            return button
        }()
        let characterButtonItem = UIBarButtonItem(customView: characterButton)
        return characterButtonItem
    }
    
    func addCharacter(_ sender: UIButton) {

    }
    
}
