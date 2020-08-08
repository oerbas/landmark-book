//
//  secondViewController.swift
//  LandmarkBook
//
//  Created by Orhan Erbas on 6.07.2020.
//  Copyright © 2020 Orhan Erbas. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelText: UILabel!
    
    var selectedLabel = ""
    var selectedImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = selectedImage
        labelText.text = selectedLabel
    }
    

}
