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
    
    let buttonMenu: UIButton = {
        
        let buttonG = UIButton()
        buttonG.backgroundColor = UIColor.red
        
        let backgroundimage = UIImage(named: "ic_3d_rotation_36pt") as UIImage?
        buttonG.setImage(backgroundimage, for: .normal)
        
        
        return buttonG
    }()
    
    
    let buttonMenu1: UIButton = {
        
        let buttonG1 = UIButton()
        buttonG1.backgroundColor = UIColor.red
        
        let backgroundimage1 = UIImage(named: "ic_3d_rotation_36pt") as UIImage?
        buttonG1.setImage(backgroundimage1, for: .normal)
        
        return buttonG1
    }()
    
    //show menu
    func showSettings(){
        
        if let window = UIApplication.shared.keyWindow{
            
            
            blackView.backgroundColor = UIColor(white: 0, alpha: 0.5)
            blackView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleDismiss)))
            
            window.addSubview(blackView)
            window.addSubview(buttonMenu)
            window.addSubview(buttonMenu1)
            
            
            buttonMenu.frame = CGRect(x: 100, y: 500, width: 25, height: 25)
            buttonMenu1.frame = CGRect(x: 100, y: 600, width: 25, height: 25)
            
            
            blackView.frame = window.frame
            blackView.alpha = 0
            
            //for animation
            UIView.animate(withDuration: 1.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .transitionCurlUp, animations: {
                
                self.blackView.alpha = 1
                self.buttonMenu.frame = CGRect(x: 100, y: 200, width: 50, height: 50)
                self.buttonMenu1.frame = CGRect(x: 100, y: 300, width: 50, height: 50)
                
            } , completion: nil)
            
        }
        
        
    }
    
    func handleDismiss() {
        
        UIView.animate(withDuration: 0.5) {
            self.blackView.alpha = 0
            
            if let window = UIApplication.shared.keyWindow {
                
                self.buttonMenu.frame = CGRect(x: 100, y: window.frame.height, width: 50, height: 50)
                self.buttonMenu1.frame = CGRect(x: 100, y: window.frame.height, width: 50, height: 50)
                
            }
            
            self.buttonMenu.removeFromSuperview()
            self.buttonMenu1.removeFromSuperview()
        }
        
    }
    
    
    override init (){
        super.init()
        
        
        
        
    }
}

