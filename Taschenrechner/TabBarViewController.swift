//
//  TabBarViewController.swift
//  Taschenrechner
//
//  Created by Stephen Japon Jantz on 09.09.17.
//  Copyright © 2017 Stephen Jantz. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController, UITabBarControllerDelegate, SideBarDelegate, SlideMenuDelegate {
    func sideBarDidSelectButtonAtIndex(index: Int) {
    
    }
    

    //var sidebar:SideBar = SideBar()
    var slideMenu:SlideMenu = SlideMenu()
    var slideMenuIcon:SlideMenu = SlideMenu()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self
        
       setNaviBar()
        
//       sidebarMenuItems()
        slideMenuItems()
        slideMenuIcons()
 
    }
//
//    //sidebar1
//    func sidebarMenuItems(){
//        sidebar = SideBar(sourceView: self.view, menuItems: ["ITEM1", "ITEM2", "ITEM3", "ITEM4", "ITEM5", "ITEM6", "ITEM7", "ITEM8",]);
//        sidebar.delegate = self
//    }
//
    //sidebar2
    func slideMenuItems(){
        slideMenu = SlideMenu(sourceView: self.view, menuItems: ["ITEM1", "ITEM2", "ITEM3", "ITEM4", "ITEM5", "ITEM6", "ITEM7", "ITEM8",]);
        slideMenu.delegate = self
    }
    
    
    //the icons for the Sidebar
    func slideMenuIcons(){
        slideMenuIcon = SlideMenu(sourceView: self.view, menuIcons: ["ic_accessibility_36pt","ic_accessibility_36pt","ic_accessibility_36pt","ic_accessibility_36pt","ic_accessibility_36pt","ic_accessibility_36pt","ic_accessibility_36pt","ic_accessibility_36pt"])
        slideMenuIcon.delegate = self
        
    }
    
    
    func slideMenuDidSelectButtonAtIndex(index: Int) {
        
    }

    
//    func sideBarDidSelectButtonAtIndex(index: Int) {
//        
//    }
//    

 

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
        
        //navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Verlauf", style: .plain, target: self, action: #selector(handleMore))
        
        //set the color
        navigationItem.leftBarButtonItem?.tintColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
        navigationItem.rightBarButtonItem?.tintColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
        
        self.navigationItem.title = "Home"
        

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
        
        let tabTwo = renderScrollView()
        let tabTwoBarItem = UITabBarItem(title: "Liste", image: UIImage(named: "ic_list_36pt"), selectedImage: UIImage(named: ""))
        tabTwo.tabBarItem = tabTwoBarItem
        
        let arrayController = [tabHome,tabCamera, tabTwo]
        
        self.viewControllers = arrayController
        
        UITabBar.appearance().tintColor = UIColor.black
 
    }
    
    //UITabBarControllerDelegate method
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("Selected\(viewController.title)")
        
        
    }
}

