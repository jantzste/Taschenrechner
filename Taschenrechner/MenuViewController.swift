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
        
    }
    
    func button(){
        
    }
    
    //add the navigationBar
    func setNaviBar(){
        view.backgroundColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)

        let screenSize: CGRect = UIScreen.main.bounds
        let navBar: UINavigationBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: screenSize.width , height: 80))
        
        let navItem = UINavigationItem(title: "Verlauf")
        
        
        
        let doneItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.cancel, target: nil, action: #selector(done))
        navItem.leftBarButtonItem = doneItem
        navBar.setItems([navItem], animated: false)
        self.view.addSubview(navBar)
        UINavigationBar.appearance().tintColor = UIColor.white
        navBar.barTintColor = UIColor.black
        navBar.isTranslucent = false
    }
    
    //methode muss noch definiert werden
    func done(){
        
        
        
        //self.navigationController?.popViewController(animated: true)
        
    }
    
    //
    //    func backAction(){
    //        self.navigationController?.popViewController(animated: true)
    //    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    //change the color of the statutsbar to white
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    
}
extension UIColor{
    
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat) {
        self.init(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
}

