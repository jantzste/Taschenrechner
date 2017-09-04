//
//  SettingsCell.swift
//  Taschenrechner
//
//  Created by Stephen Japon Jantz on 03.09.17.
//  Copyright © 2017 Stephen Jantz. All rights reserved.
//

import UIKit

class SettingCell: BaseCell{
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Settings"
        
        return label
        
        
    }()
    
    let iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "ic_accessibility_36pt")
        imageView.contentMode = .scaleAspectFill
        
        return imageView
    }()
    
    
    override func setupViews(){
        super.setupViews()
        
       // backgroundColor = UIColor.blue
        
        addSubview(nameLabel)
        addSubview(iconImageView)
        
        addConstraintsWithFormat(format: "H:|-8-[v0(30)]-8-[v1]|", views: iconImageView, nameLabel)
        addConstraintsWithFormat(format: "V:|[v0]|", views: nameLabel)
        addConstraintsWithFormat(format: "V:[v0(30)]", views: iconImageView)
        
        addConstraints([NSLayoutConstraint(item: iconImageView, attribute: .centerY, relatedBy: .equal, toItem: self, attribute: .centerY, multiplier: 1, constant: 0)])
        
        

    }
    
    
}
