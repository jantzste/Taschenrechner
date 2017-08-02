//
//  ViewController.swift
//  Taschenrechner
//
//  Created by Stephen Japon Jantz on 15.07.17.
//  Copyright © 2017 Stephen Jantz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
 
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
        
        setNaviBar()
        //add the finalResultButton
        let renderObj = renderButton()
        let finalResultButton = renderObj.finalResultButton()
        self.view.addSubview(finalResultButton)
        
        numberInput()
  
    }
    
    
    func setNaviBar(){
        
        //create left NavigationButton
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Verlauf", style: .plain, target: self, action: #selector(handelMenu))
 
        //set the color
        navigationItem.leftBarButtonItem?.tintColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
        
        //set the navigation title
        self.navigationController?.navigationBar.barTintColor = UIColor.black
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationItem.title = "Rechner"

    }
    
    func handelMenu(){
        let menuController = MenuViewController()
        present(menuController, animated: true, completion: nil)

    }
    
    
    func numberInput(){
        
        let background = UIView(frame: CGRect(x: 0, y: 10, width: 420, height: 80))
        background.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        self.view.addSubview(background)

        let numberInput = UILabel(frame: CGRect(x: 15, y: 10, width: 385, height: 60))
        numberInput.text = "test"
        numberInput.textColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
        numberInput.font = UIFont.italicSystemFont(ofSize: 60)

        background.addSubview(numberInput)
        
        
    }
    
    
 
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}



