//
//  renderScrollView.swift
//  Taschenrechner
//
//  Created by Stephen Japon Jantz on 28.07.17.
//  Copyright © 2017 Stephen Jantz. All rights reserved.
//

import UIKit

class renderScrollView: UIViewController {

    func scrollView() -> UIScrollView{
        let grayScrollView = UIScrollView(frame: CGRect(x: 10, y: 130, width: 395, height: 600))
        
        //let blueScrollView = UIScrollView(frame: CGRect(x: 10, y: 200, width: 400, height: 400))
        grayScrollView.backgroundColor = UIColor(r: 239, g: 240, b: 241)
        grayScrollView.contentSize = CGSize(width: 200 , height: 200)
        grayScrollView.contentOffset = CGPoint(x: 10, y: 20)
        
        grayScrollView.contentSize = CGSize(width: 100, height: 100)

        
        
        let whiteView = UIView(frame: CGRect(x: 20, y: 20, width: 350, height: 550))
        whiteView.backgroundColor = UIColor.white
        whiteView.layer.cornerRadius = 5
        grayScrollView.addSubview(whiteView)
        
        return grayScrollView
        
    }

}
