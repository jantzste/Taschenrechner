//
//  TabBarViewController.swift
//  Taschenrechner
//
//  Created by Stephen Japon Jantz on 09.09.17.
//  Copyright © 2017 Stephen Jantz. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController, UITabBarControllerDelegate {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self
        
        setNaviBar()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        renderTabBar()
    }
    
    
    func setNaviBar(){
        
        
        //create left NavigationButton
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Sidebar", style: .plain, target: self, action: #selector(handelMenu))
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Verlauf", style: .plain, target: self, action: #selector(handleMore))
        
        //set the color
        navigationItem.leftBarButtonItem?.tintColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
        navigationItem.rightBarButtonItem?.tintColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
        
        
        //set the navigation title
        self.navigationController?.navigationBar.barTintColor = UIColor.black
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationItem.title = "Homescreen"
        
        //set backgroundColor of homescreen to white
        self.view.backgroundColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
        
    }
    
    
    lazy var settingsLauncher : SettingsLauncher = {
        let launcher = SettingsLauncher()
        
        launcher.homeScreenController = self
        

       //launcher.homeController = self
        return launcher
    }()
    
    func handleMore(){
        
        //show menu
        settingsLauncher.showSettings()
    }
    
    func showControllerForSetting(setting: Setting){
        let dummySettingsViewController = UIViewController()
        dummySettingsViewController.view.backgroundColor = UIColor.white
        dummySettingsViewController.navigationItem.title = setting.name.rawValue
        navigationController?.navigationBar.tintColor = UIColor.white
        navigationController?.pushViewController(dummySettingsViewController, animated: true)
    }
    
    
    func handelMenu(){
        let menuController = MenuViewController()
        navigationController?.pushViewController(menuController, animated: false)
    }

    func renderTabBar(){
        
        //Create Tab home
        let tabOne = ViewController()
        let tabOneBarItem = UITabBarItem(title: "Home", image: UIImage(named: "ic_home_36pt"), selectedImage: UIImage(named: ""))
        
        tabOne.tabBarItem = tabOneBarItem
        
        //Create Tab two
        let tabTwo = renderScrollView()
        let tabTwoBarItem = UITabBarItem(title: "Tab2", image: UIImage(named: "ic_lock_36pt"), selectedImage: UIImage(named: ""))
        
        tabTwo.tabBarItem = tabTwoBarItem
        
        let arrayController = [tabOne,tabTwo]
        
        self.viewControllers = arrayController
        
        
        UITabBar.appearance().tintColor = UIColor.black
        
        
    }
    
    //UITabBarControllerDelegate method
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("Selected\(viewController.title)")
        
        
    }
}
