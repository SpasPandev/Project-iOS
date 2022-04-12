//
//  ViewController.swift
//  Project
//
//  Created by user211405 on 3/21/22.
//

import UIKit

class ViewController: UIViewController {
    
    var user = User()

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var alertView: UIView!
    
    @IBOutlet weak var alertViewTopConstraint: NSLayoutConstraint!
    
    @IBAction func logIn(_ sender: UIButton) {
        if(usernameField.text == user.username && passwordField.text == user.password)
        {
            self.performSegue(withIdentifier: "Home screen", sender: self)
            navigationItem.backButtonTitle = "Log out"
        }
    }
    
    var isActive = true
    
    @IBAction func btnStartAnimation(_ sender: Any) {
        animateAlert(show: isActive)
    }
    
    private func animateAlert(show: Bool) {
        
        UIView.animate(withDuration: 0.8) { [weak self] in
            
            if (show == true) {
                self?.hideAlert()
            }
            else if (show == false) {
                self?.showAlert()
            }
            
            self?.view.layoutIfNeeded()    }
    }
    
    private func hideAlert() {
        
        isActive = false
        alertViewTopConstraint.constant = -(alertView.frame.origin.y) - alertView.frame.height
    }
    
    private func showAlert() {
    
        isActive = true
        alertViewTopConstraint.constant = 80
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        hideAlert()
    }


}

