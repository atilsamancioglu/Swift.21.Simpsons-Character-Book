//
//  detailsVC.swift
//  Simpsons Character Book
//
//  Created by Atıl Samancıoğlu on 12/02/2017.
//  Copyright © 2017 Atıl Samancıoğlu. All rights reserved.
//

import UIKit

class detailsVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var occupationLabel: UILabel!
    
    var selectedSimpson = Simpson()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = selectedSimpson.name
        occupationLabel.text = selectedSimpson.occupation
        imageView.image = selectedSimpson.image
        
        
    }



}
