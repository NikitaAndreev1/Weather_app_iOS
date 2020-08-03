//
//  WeatherCell.swift
//  Weather_app_iOS
//
//  Created by Nicks on 03.08.2020.
//  Copyright © 2020 Nicks. All rights reserved.
//

import UIKit

class WeatherCell: UICollectionViewCell {
    @IBOutlet weak var weather: UILabel!
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var time: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.borderColor = UIColor.black.cgColor
        layer.borderWidth = 1 
    }
    
    
    
    
}
