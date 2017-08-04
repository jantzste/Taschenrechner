//
//  DivideButton.swift
//  Taschenrechner
//
//  Created by Stephen Japon Jantz on 04.08.17.
//  Copyright © 2017 Stephen Jantz. All rights reserved.
//

import UIKit

class DivideButton: UIButton {


    func divideButton() -> UIButton{
        
        let btn: UIButton = UIButton(frame: CGRect(x: 316, y: 420, width: 80, height: 50))
        btn.backgroundColor = UIColor.black
        btn.setTitle("/", for: UIControlState.normal)
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(divideButtonAction), for: .touchUpInside)
        btn.tag = 1
        
        return btn
    }
    
    func divideButtonAction(sender: UIButton!){
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
