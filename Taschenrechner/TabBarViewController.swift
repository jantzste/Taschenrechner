//
//  TabBarViewController.swift
//  Taschenrechner
//
//  Created by Stephen Japon Jantz on 09.09.17.
//  Copyright © 2017 Stephen Jantz. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController, UITabBarControllerDelegate{
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        renderTabBar()
    }
    
    
    func renderTabBar(){
        
        //Create Tab one
        let tabOne = ViewController()
        let tabOneBarItem = UITabBarItem(title: "Tab1", image: UIImage(named: "ic_settings_36pt"), selectedImage: UIImage(named: "ic_lock_36pt"))
        
        tabOne.tabBarItem = tabOneBarItem
        
        //Create Tab two
        let tabTwo = renderScrollView()
        let tabTwoBarItem = UITabBarItem(title: "Tab2", image: UIImage(named: "ic_lock_36pt"), selectedImage: UIImage(named: "ic_settings_36pt"))
        
        tabTwo.tabBarItem = tabTwoBarItem
        
        let arrayController = [tabOne,tabTwo]
        
        self.viewControllers = arrayController
        
        
    }
    
    //UITabBarControllerDelegate method
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("Selected\(viewController.title)")
        
        
    }
}
