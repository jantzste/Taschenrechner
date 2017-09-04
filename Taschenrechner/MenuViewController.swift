//
//  MenuViewController.swift
//  Taschenrechner
//
//  Created by Stephen Japon Jantz on 15.07.17.
//  Copyright © 2017 Stephen Jantz. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setNaviBar()
        
        setScrollView()
        
        setTitel()
        
        
    }
    
    func setScrollView(){
        
        //add scrollView
        let renderScroll = renderScrollView()
        let scrollView = renderScroll.scrollView()
        self.view.addSubview(scrollView)
    }
    
    //add a title above of the scrollView
    func setTitel(){
        let titel = UILabel(frame: CGRect(x: 10, y: 85, width: 200, height: 21))
        titel.textAlignment = .left
        titel.text = "Verlauf"
        titel.textColor = UIColor.black
        titel.font = titel.font.withSize(20)
        
        self.view.addSubview(titel)
        
        
    }
    
    
    //add the navigationBar
    func setNaviBar(){
        view.backgroundColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
        //make the screenSize automatically
        let screenSize: CGRect = UIScreen.main.bounds
        let navBar: UINavigationBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: screenSize.width , height: 60))
        
        let navItem = UINavigationItem(title: "Rechner")
        
        let backButton = UIBarButtonItem(title: "Zurück", style: UIBarButtonItemStyle.plain, target: self, action: #selector (cancelButton))
        
        navItem.leftBarButtonItem = backButton
        navBar.setItems([navItem], animated: false)
        self.view.addSubview(navBar)
        
        //change the color color of Navigationbar to white
        UINavigationBar.appearance().tintColor = UIColor.white
        navBar.barTintColor = UIColor.black
        navBar.isTranslucent = false
    }
    
    
    //Backbutton
    func cancelButton(){
        
        dismiss(animated: false, completion: nil)
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}

