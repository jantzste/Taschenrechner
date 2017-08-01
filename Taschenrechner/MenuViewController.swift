//
//  MenuViewController.swift
//  Taschenrechner
//
//  Created by Stephen Japon Jantz on 15.07.17.
//  Copyright © 2017 Stephen Jantz. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    
    let inputsContainerView: UIView = {
        
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    let buttonRound: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.brown
        button.tintColor = UIColor.blue
        
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setNaviBar()
        
        //add scrollView
        let renderScroll = renderScrollView()
        let scrollView = renderScroll.scrollView()
        self.view.addSubview(scrollView)
        
        
    }
    
    
    
    
    func button(){
        
    }
    
    //add the navigationBar
    func setNaviBar(){
        view.backgroundColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
        //make the screenSize automatically
        let screenSize: CGRect = UIScreen.main.bounds
        let navBar: UINavigationBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: screenSize.width , height: 60))
        
        let navItem = UINavigationItem(title: "Verlauf")
 
        let backButton = UIBarButtonItem(title: "Zurück", style: UIBarButtonItemStyle.plain, target: self, action: #selector (cancelButton))
        
        navItem.leftBarButtonItem = backButton
        navBar.setItems([navItem], animated: false)
        self.view.addSubview(navBar)
        
        
        //change the color of Navigationbar and change the tintcolor
        
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
extension UIColor{
    
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat) {
        self.init(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
}

