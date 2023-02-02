//
//  ViewController.swift
//  DigitalKeyboard
//
//  Created by 王承权 on 01/05/2019.
//  Copyright (c) 2019 王承权. All rights reserved.
//

import UIKit
import DigitalKeyboard

class ViewController: UIViewController, DigitalKeyboardDelete {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: UITextRange, replacementString string: String) -> Bool {
        if string == "3" {
            return true
        }
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = .orange
        let textField = UITextField(frame: CGRect(x: 100, y: 120, width: 200, height: 35))
        textField.borderStyle = .roundedRect
        view.addSubview(textField)
        //        DigitalKeyboard.default.addKeyboard(view, field: textField)
        let accessoryView = UIView(frame: CGRect(origin: .zero, size: CGSize(width: self.view.bounds.width, height: 44)))
        accessoryView.backgroundColor = .red
        let digitalKeyboard = DigitalKeyboard(view, accessoryView: accessoryView, field: textField)
        digitalKeyboard.delegate = self
        textField.becomeFirstResponder()
        //        let keyboard = DigitalKeyboard(view: view)
        //        keyboard.style = .number
        //        keyboard.customDoneButton(title: "hello", titleColor: .blue, theme: .green, target: self, callback: #selector(test))
        //        keyboard.isSafety = true
        //        textField.inputView = keyboard
        //        textField.becomeFirstResponder()
        
        
        let textField2 = UITextField(frame: CGRect(x: 100, y: 320, width: 200, height: 35))
        textField2.borderStyle = .roundedRect
        view.addSubview(textField2)
        
        //        DigitalKeyboard.default.addKeyboard(view, field: textField2)
        let accessoryView2 = UIView(frame: CGRect(origin: .zero, size: CGSize(width: self.view.bounds.width, height: 44)))
        accessoryView2.backgroundColor = .red
        let digitalKeyboard2 = DigitalKeyboard(view, accessoryView: accessoryView2, field: textField2)
        digitalKeyboard2.delegate = self
        digitalKeyboard2.dkstyle = .number
    }
    
    func test() {
        print("hello ok")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
}

