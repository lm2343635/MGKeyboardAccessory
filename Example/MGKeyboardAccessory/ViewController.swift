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

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textField.setCloseKeyboardAccessoryForSender([".com", ".cn", ".net"])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

