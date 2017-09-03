//
//  Extensions.swift
//  Taschenrechner
//
//  Created by Stephen Japon Jantz on 03.09.17.
//  Copyright © 2017 Stephen Jantz. All rights reserved.
//

import UIKit

extension UIView{
    
    func addConstraintsWithFormat(format: String, views: UIView...){
        var viewsDictionary = [String: UIView]()
        for (index, view) in views.enumerated(){
            let key = "v\(index)"
            view.translatesAutoresizingMaskIntoConstraints = false
            viewsDictionary[key] = view
        }

    addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutFormatOptions(), metrics: nil, views: viewsDictionary))

    }
   
}
