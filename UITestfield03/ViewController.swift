//
//  ViewController.swift
//  UITestfield03
//
//  Created by D7703_24 on 2019. 4. 4..
//  Copyright © 2019년 D7703_24. All rights reserved.
//

import UIKit
//1
class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //2
        myTextField.delegate = self
        myTextField.clearButtonMode = UITextField.ViewMode.always
    }

    @IBAction func btnPressed(_ sender: Any) {
        let inString = myTextField.text
        print(inString!)
        myLabel.text = inString
        myTextField.text = ""
        myTextField.resignFirstResponder()
    }
    //delegate method
    //called when 'return' key pressed. return No to ignore.
    //3
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        myTextField.resignFirstResponder()
        myTextField.backgroundColor = UIColor.blue
        return true
    }

    public func textFieldShouldClear(_ textField: UITextField) -> Bool {
        view.backgroundColor = UIColor.green
        return true
    }
}

