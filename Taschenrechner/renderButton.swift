//
//  renderButton.swift
//  Taschenrechner
//
//  Created by Stephen Japon Jantz on 28.07.17.
//  Copyright © 2017 Stephen Jantz. All rights reserved.
//

import UIKit

class renderButton: UIButton {
    
    
    func finalResultButton() -> UIButton{
        
        let btn: UIButton = UIButton(frame: CGRect(x: 316, y: 600, width: 80, height: 50))
        btn.backgroundColor = UIColor.black
        btn.setTitle("=", for: UIControlState.normal)
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(finalResultButtonAction), for: .touchUpInside)
        btn.tag = 1
        //self.view.addSubview(btn)
        
        return btn
    }
    
    func finalResultButtonAction(sender: UIButton!){
        var btnSendTag: UIButton = sender
        
        if btnSendTag.tag == 1{
            
            //dismiss(animated: false, completion: nil)
            
            print("mal gedrückt")
        }else{
           // dismiss(animated: true, completion: nil)

            print("nicht gedrückt")
        }
    }
    
    
    
}
