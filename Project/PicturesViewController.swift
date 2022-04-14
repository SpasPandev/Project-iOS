//
//  PicturesViewController.swift
//  Project
//
//  Created by user211405 on 4/13/22.
//

import UIKit

class PicturesViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBAction func pictureTap(_ sender: UITapGestureRecognizer) {
        let imageView = sender.view as! UIImageView
            let newImageView = UIImageView(image: imageView.image)
            newImageView.frame = self.view.frame
            newImageView.backgroundColor = .black
            newImageView.contentMode = .scaleAspectFit
            newImageView.isUserInteractionEnabled = true
            let tap = UITapGestureRecognizer(target: self, action: #selector(self.dismissFullscreenImage(sender:)))
            newImageView.addGestureRecognizer(tap)
            self.view.addSubview(newImageView)
            navigationController?.setNavigationBarHidden(true, animated: true)
    }
    @objc func dismissFullscreenImage(sender: UITapGestureRecognizer) {
            sender.view?.removeFromSuperview()
            navigationController?.setNavigationBarHidden(false, animated: true)
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        collectionView.dataSource = self
        
        collectionView.delegate = self
        collectionView.collectionViewLayout = UICollectionViewFlowLayout()
    }
}


extension PicturesViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        picture.count    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GallerieCollectionViewCell", for: indexPath) as!    GallerieCollectionViewCell
        cell.setup(with: picture[indexPath.row])
        return cell
    }
}

extension PicturesViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 300)
    }
}

