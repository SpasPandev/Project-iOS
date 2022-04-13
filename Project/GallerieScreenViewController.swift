//
//  GallerieScreen.swift
//  Project
//
//  Created by user211405 on 4/13/22.
//

import UIKit

class GallerieScreenViewController: UIViewController {

    @IBAction func openGallerie(_ sender: UIButton) {
        
            self.performSegue(withIdentifier: "Gallerie Screen", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
}
