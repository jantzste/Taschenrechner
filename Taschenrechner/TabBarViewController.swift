//
//  TabBarViewController.swift
//  Taschenrechner
//
//  Created by Stephen Japon Jantz on 09.09.17.
//  Copyright © 2017 Stephen Jantz. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController, UITabBarControllerDelegate, SlideMenuDelegate {

    var slideMenu:SlideMenu = SlideMenu()
    var slideMenuIcon:SlideMenu = SlideMenu()    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self
        
        setNaviBar()
        slideMenuItems()
        slideMenuIcons()
        
    }

    //sidebar
    func slideMenuItems(){
        slideMenu = SlideMenu(sourceView: self.view, menuItems: ["ITEM1", "ITEM2", "ITEM3", "ITEM4", "ITEM5", "ITEM6", "ITEM7", "ITEM8",]);
        slideMenu.delegate = self
    }
    
    
    //the icons for the Sidebar
    func slideMenuIcons(){

        
    }
    
    
    func slideMenuDidSelectButtonAtIndex(index: Int) {
        
    }


    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        renderTabBar()

    }
    
    override var prefersStatusBarHidden: Bool{
        return UIApplication.shared.statusBarOrientation.isLandscape
    }
    
    
    
    func setNaviBar(){
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "ic_more_horiz_36pt"), style: .plain, target: self, action: #selector(handleMore))
        
        //create left NavigationButton
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named:"ic_menu_36pt"), style: .plain, target: self, action: #selector(handelMenu))
        
        //set the color
        navigationItem.leftBarButtonItem?.tintColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
        navigationItem.rightBarButtonItem?.tintColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
        
        self.navigationItem.title = "Home"
        
        //set backgroundcolor of the view
        self.view.backgroundColor = UIColor.white


    }
    
    
    lazy var settingsLauncher : SettingsLauncher = {
        let launcher = SettingsLauncher()
        
        launcher.homeScreenController = self
        
        return launcher
    }()
    
    func handleMore(){
        //show menu
        settingsLauncher.showSettings()
    }

    
    func handelMenu(){
        //show sidebar
       let sidebarcontainer =  ViewControllerContainer()
        navigationController?.show(sidebarcontainer, sender: nil)
        
    }
    
    
    func showControllerForSetting(setting: Setting){
        let dummySettingsViewController = UIViewController()
        dummySettingsViewController.view.backgroundColor = UIColor.white
        dummySettingsViewController.navigationItem.title = setting.name.rawValue
        navigationController?.navigationBar.tintColor = UIColor.white
        navigationController?.pushViewController(dummySettingsViewController, animated: true)
    }
    
    func renderTabBar(){
        
        //Create the tabs
        let tabHome = ViewController()
        let tabHomeBarItem = UITabBarItem(title: "Home", image: UIImage(named: "ic_home_36pt"), selectedImage: UIImage(named: ""))
        tabHome.tabBarItem = tabHomeBarItem
            
        let tabCamera = CameraScreenViewController()
        let tabCameraBarItem = UITabBarItem(title: "Camera", image: UIImage(named: "ic_photo_camera_36pt"), selectedImage: UIImage(named: ""))
        tabCamera.tabBarItem =  tabCameraBarItem
        
        let tabList = ListViewController()
        let tabListItem = UITabBarItem(title: "Liste", image: UIImage(named: "ic_list_36pt"), selectedImage: UIImage(named: ""))
        tabList.tabBarItem = tabListItem
        
        let arrayController = [tabHome,tabCamera, tabList]
        
        self.viewControllers = arrayController
        
        UITabBar.appearance().tintColor = UIColor(red: 7/255, green: 116/255, blue: 0/255, alpha: 1)
        
        UITabBar.appearance().barTintColor = UIColor(red: 92/255, green: 162/255, blue: 78/255, alpha: 1)
        



    }
    
    //UITabBarControllerDelegate method
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("Selected\(viewController.title)")
   
    }
    

}

