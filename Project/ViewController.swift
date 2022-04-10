//
//  ViewController.swift
//  Project
//
//  Created by user211405 on 3/21/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    @IBAction func logIn(_ sender: UIButton) {
        if(usernameField.text == "test" && passwordField.text == "test")
        {
            usernameField.text = "asdasd";
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

