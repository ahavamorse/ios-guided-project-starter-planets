//
//  PlanetCollectionViewCell.swift
//  Planets
//
//  Created by Ahava on 4/15/20.
//  Copyright © 2020 Lambda Inc. All rights reserved.
//

import UIKit

class PlanetCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    // The planet that the cell should display
    var planet: Planet? {
        didSet {
            // Any time the planet's value changes, run this code
            updateViews()
        }
    }
    
    func updateViews() {
        imageView.image = planet?.image
        nameLabel.text = planet?.name
    }
}
