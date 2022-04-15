//
//  GallerieScreen.swift
//  Project
//
//  Created by user211405 on 4/13/22.
//

import UIKit

class GallerieScreenViewController: UIViewController {

    @IBAction func tapCustomView(_ sender: UITapGestureRecognizer) {
        self.performSegue(withIdentifier: "Gallerie Screen", sender: self)
    }
    
    @IBOutlet weak var tappedCustomView: CustomView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
}
