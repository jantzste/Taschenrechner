//
//  SetupViewController.swift
//  Taschenrechner
//
//  Created by Stephen Japon Jantz on 20.10.17.
//  Copyright © 2017 Stephen Jantz. All rights reserved.
//

import UIKit

class SetupViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setNaviBar()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func setNaviBar(){
        
        self.view.backgroundColor = UIColor(red: 92/255, green: 162/255, blue: 78/255, alpha: 1)
  
    }
    

}
