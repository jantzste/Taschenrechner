//
//  renderScrollView.swift
//  Taschenrechner
//
//  Created by Stephen Japon Jantz on 28.07.17.
//  Copyright © 2017 Stephen Jantz. All rights reserved.
//

import UIKit

class renderScrollView: UIViewController {

    func scrollView(){
        let blueScrollView = UIScrollView(frame: UIScreen.main.bounds)
        
        //let blueScrollView = UIScrollView(frame: CGRect(x: 10, y: 200, width: 400, height: 400))
        blueScrollView.backgroundColor = UIColor.blue
        blueScrollView.contentSize = CGSize(width: 200 , height: 200)
        blueScrollView.contentOffset = CGPoint(x: 10, y: 20)
        
        
        let grayView = UIView(frame: CGRect(x: 20, y: 20, width: 500, height: 4000))
        grayView.backgroundColor = UIColor.gray
        blueScrollView.addSubview(grayView)
        
    }

}
