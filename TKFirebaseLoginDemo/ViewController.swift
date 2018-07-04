//
//  ViewController.swift
//  TKFirebaseLoginDemo
//
//  Created by Tushar Kolhe on 04/07/18.
//  Copyright © 2018 Tushar Kolhe. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    let const1 = 11
    var someVariable : String = ""

    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    @IBOutlet var loginBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.emailTextField.delegate = self
        self.passwordTextfield.delegate = self
        loginBtn.layer.cornerRadius = 20

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

// Hide keyboard on screen click
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
// Hide on return click
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.emailTextField.endEditing(true)
        self.passwordTextfield.endEditing(true)

        return(true)
    }

}

