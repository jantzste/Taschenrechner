//
//  renderScrollView.swift
//  Taschenrechner
//
//  Created by Stephen Japon Jantz on 28.07.17.
//  Copyright © 2017 Stephen Jantz. All rights reserved.
//

import UIKit

class renderScrollView: UIViewController {
    

    //create a ScrollView with that properties
    func scrollView() -> UIScrollView{
        let grayScrollView = UIScrollView(frame: CGRect(x: 0, y: 60, width: 420, height: 610))
        
        //let blueScrollView = UIScrollView(frame: CGRect(x: 10, y: 200, width: 400, height: 400))
        grayScrollView.backgroundColor = UIColor(r: 239, g: 240, b: 241)
        grayScrollView.contentOffset = CGPoint(x: 10, y: 20)
        grayScrollView.contentSize = CGSize(width: 100, height: 100)

        
        //add a white CardViw
        let whiteCardView = UIView(frame: CGRect(x: 12, y: 20, width: 390, height: 580))
        whiteCardView.backgroundColor = UIColor.white
        whiteCardView.layer.cornerRadius = 5
        grayScrollView.addSubview(whiteCardView)
        
        return grayScrollView
        
    }

}
