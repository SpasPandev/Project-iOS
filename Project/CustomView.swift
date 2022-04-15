//
//  CustomView.swift
//  Project
//
//  Created by user211405 on 4/15/22.
//

import Foundation
import UIKit

class CustomView: UIView
{
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setup()
    }
    
    func setup()
    {
        self.layer.cornerRadius = 30
        self.layer.borderWidth = 3
        self.layer.backgroundColor = UIColor.brown.cgColor
        
        self.clipsToBounds = true
    }
}
