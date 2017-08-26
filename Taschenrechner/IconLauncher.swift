//
//  IconLauncher.swift
//  Taschenrechner
//
//  Created by Stephen Japon Jantz on 23.08.17.
//  Copyright © 2017 Stephen Jantz. All rights reserved.
//

import UIKit

class IconLauncher: NSObject{


let blackView = UIView()

let collectionView: UICollectionView = {
    let layout = UICollectionViewFlowLayout()
    let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
    cv.backgroundColor = UIColor.black
    
    return cv
}()

//show menu
func showSettings(){
    
    if let window = UIApplication.shared.keyWindow{
        
        
        blackView.backgroundColor = UIColor(white: 0, alpha: 0.5)
        blackView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleDismiss)))
        
        window.addSubview(blackView)
        window.addSubview(collectionView)

        
        collectionView.frame = CGRect(x: 0, y: 500, width: 25, height: 25)
        
        collectionView.layer.cornerRadius = collectionView.frame.size.width/1
        collectionView.clipsToBounds = true
        
        collectionView.layer.borderColor = UIColor.white.cgColor
        collectionView.layer.borderWidth = 5.0
        
        
        blackView.frame = window.frame
        blackView.alpha = 0
        
        UIView.animate(withDuration: 1.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            
            self.blackView.alpha = 1
            
            self.collectionView.frame = CGRect(x: 100, y: 480, width: 50, height: 50)
            
        } , completion: nil)
        
    }
    
    
}

func handleDismiss() {
    
    UIView.animate(withDuration: 0.5) {
        self.blackView.alpha = 0
        
        if let window = UIApplication.shared.keyWindow {
            self.collectionView.frame = CGRect(x: 0, y: window.frame.height, width: self.collectionView.frame.width, height: self.collectionView.frame.height)
        }
    }
    
}


override init (){
    super.init()
//start doing something here maybe...

}
}
        
