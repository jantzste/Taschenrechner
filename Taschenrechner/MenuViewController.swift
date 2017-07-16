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
        view.backgroundColor = UIColor.white
        view.translatesAutoresizingMaskIntoConstraints = false

        return view
    }()
    
    
    


    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
        
        setNaviBar()
        


    }
    
    //add the navigationBar
    func setNaviBar(){
        let screenSize: CGRect = UIScreen.main.bounds
        
        let navBar: UINavigationBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: screenSize.width , height: 80))
  
        
        let navItem = UINavigationItem(title: "Verlauf")
        
        let doneItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.done, target: nil, action: #selector(done))
        navItem.rightBarButtonItem = doneItem
        navBar.setItems([navItem], animated: false)
        self.view.addSubview(navBar)
        

        
    }
    
    //methode muss noch definiert werden
    func done(){
        
    }
 
//    
//    func backAction(){
//        self.navigationController?.popViewController(animated: true)
//    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
//    //change the color of the statutsbar to white
//    override var preferredStatusBarStyle: UIStatusBarStyle{
//        return .lightContent
//    }
    
}
extension UIColor{
    
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat) {
        self.init(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
}

