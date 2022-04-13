//
//  GallerieCollectionViewCell.swift
//  Project
//
//  Created by user211405 on 4/13/22.
//

import UIKit

class GallerieCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var pictureImageView: UIImageView!
    
    func setup(with picture: Picture) {
        pictureImageView.image = picture.image
    }
}
