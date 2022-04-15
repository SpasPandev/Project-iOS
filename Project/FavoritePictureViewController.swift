//
//  FavoritePictureViewController.swift
//  Project
//
//  Created by user211405 on 4/15/22.
//

import UIKit

class FavoritePictureViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.minimumZoomScale = 0.1
        scrollView.maximumZoomScale = 2.0
        scrollView.delegate = self
        // Do any additional setup after loading the view.
    }
}

extension FavoritePictureViewController: UIScrollViewDelegate {
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
}
