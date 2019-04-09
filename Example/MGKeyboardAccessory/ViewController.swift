//
//  ViewController.swift
//  MGKeyboardAccessory
//
//  Created by Meng Li on 01/22/2017.
//  Copyright (c) 2017 MuShare. All rights reserved.
//

import UIKit
import MGKeyboardAccessory
import RxSwift

class ViewController: UIViewController {

    @IBOutlet weak var blackTextField: UITextField!
    @IBOutlet weak var defaultTextField: UITextField!
    @IBOutlet weak var textView: UITextView!
    
    private let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        blackTextField.becomeFirstResponder()
        blackTextField.setupKeyboardAccessory([":", "/", "?", "&", "alice", "=", "*", "-", "@", "~"], barStyle: .black)
        defaultTextField.setupKeyboardAccessory([":", "/", "?", "&", ".", "="], barStyle: .default)
        
        Observable.just([":", "/", "?", "&", ".", "="])
            .bind(to: textView.rx.keyboardAccessoryStrings(style: .black)).disposed(by: disposeBag)
    }

}

