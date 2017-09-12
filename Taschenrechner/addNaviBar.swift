//
//  addNaviBar.swift
//  Taschenrechner
//
//  Created by Stephen Japon Jantz on 13.09.17.
//  Copyright © 2017 Stephen Jantz. All rights reserved.
//

import UIKit

class addNaviBar: UIViewController {
    
    
    func setNaviBar(){
        
        //create left NavigationButton
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Sidebar", style: .plain, target: self, action: #selector(handelMenu))
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Verlauf", style: .plain, target: self, action: #selector(handleMore))
        
        //set the color
        navigationItem.leftBarButtonItem?.tintColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
        navigationItem.rightBarButtonItem?.tintColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
        
        
        //set the navigation title
        self.navigationController?.navigationBar.barTintColor = UIColor.black
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationItem.title = "CameraApp"
        
        //set backgroundColor of homescreen to white
        self.view.backgroundColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
        
        
        
    }
    

    func handelMenu(){
        let menuController = MenuViewController()
        navigationController?.pushViewController(menuController, animated: false)
    }
    
    
    lazy var settingsLauncher : SettingsLauncher = {
        let launcher = SettingsLauncher()
        launcher.homeController = self
        return launcher
    }()
    
    func handleMore(){
        
        //show menu
        settingsLauncher.showSettings()
    }
    
}
