//
//  ViewController.swift
//  MGKeyboardAccessory
//
//  Created by limeng on 01/22/2017.
//  Copyright (c) 2017 limeng. All rights reserved.
//

import UIKit
import MGKeyboardAccessory

class ViewController: UIViewController {

    @IBOutlet weak var blackTextField: UITextField!
    @IBOutlet weak var defaultTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        blackTextField.becomeFirstResponder()
        blackTextField.setupKeyboardAccessory([":", "/", "?", "&", ".", "=", "*", "-"], barStyle: .black)
        defaultTextField.setupKeyboardAccessory([":", "/", "?", "&", ".", "="], barStyle: .default)
    }

}

