//
//  PlusButton.swift
//  Taschenrechner
//
//  Created by Stephen Japon Jantz on 04.08.17.
//  Copyright © 2017 Stephen Jantz. All rights reserved.
//

import UIKit

class PlusButton: UIButton {

    func plusButton() -> UIButton{
        
        let btn: UIButton = UIButton(frame: CGRect(x: 316, y: 540, width: 80, height: 50))
        btn.backgroundColor = UIColor.black
        btn.setTitle("+", for: UIControlState.normal)
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(plusButtonAction), for: .touchUpInside)
        btn.tag = 1
        
        return btn
    }
    
    func plusButtonAction(sender: UIButton!){
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
