//
//  TabBarViewController.swift
//  Taschenrechner
//
//  Created by Stephen Japon Jantz on 09.09.17.
//  Copyright © 2017 Stephen Jantz. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController, UITabBarControllerDelegate, SlideMenuDelegate {

    //TODO: add a blackview behind the sidebar
    
    let blackView = UIView()
    let cellHeight: CGFloat = 50
    
    //show menu
    func showSettings(){
        
        if let window = UIApplication.shared.keyWindow{
            
            blackView.backgroundColor = UIColor(white: 0, alpha: 0.5)
            
            blackView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleDismiss)))
            window.addSubview(blackView)
            let height: CGFloat = CGFloat(100) * cellHeight
            let y = window.frame.height - height
            
            
            blackView.frame = window.frame
            blackView.alpha = 0
            
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                
                self.blackView.alpha = 1
                
                
            } , completion: nil)
            
        }
        
    }
    
    
    //dissmiss if click on the blackView
    func handleDismiss() {
        
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            self.blackView.alpha = 0
            
            if let window = UIApplication.shared.keyWindow {
                
                self.slideMenu.showSideBar(shouldOpen: false)
                
                self.slideMenuIsOpen = true
                
            }
            
        })
        
        
    }
 
    
    var slideMenu:SlideMenu = SlideMenu()
    //var slideMenuIcon:SlideMenu = SlideMenu()
    
    //to save is open or close
    var slideMenuIsOpen = true
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.delegate = self
        
        setNaviBar()
        slideMenuItems()
        slideMenuIcons()
        
    }
    
    
    //sidebar
    func slideMenuItems(){
        
        //TODO: add the Logoimage in the the cell
        
        
        slideMenu = SlideMenu(sourceView: self.view, menuItems: ["ITEM1", "ITEM2", "ITEM3", "ITEM4", "ITEM5", "ITEM6", "ITEM7", "ITEM8","ITEM9","ITEM10","ITEM11","ITEM12","ITEM13","ITEM14","ITEM15","ITEM16"]);
        
        
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
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named:"ic_menu_36pt"), style: .plain, target: self, action: #selector(handelSidebar))
        
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
    
    //show sidebar
    func handelSidebar(){
        
        if slideMenuIsOpen == true{
            slideMenu.showSideBar(shouldOpen: true)
            
            slideMenuIsOpen = false

            showSettings()
            
        }else{
            
            slideMenu.showSideBar(shouldOpen: false)
            
            slideMenuIsOpen = true
            
            handleDismiss()
            
            
        }
        
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
        
        UITabBar.appearance().tintColor = UIColor.white
        
        UITabBar.appearance().barTintColor = UIColor(r: 92, g: 162, b: 78)
        
        //change the color of the unselectedItemTintColor
        self.tabBar.unselectedItemTintColor = UIColor(r: 7, g: 116, b: 0)
        
    }
    
    //UITabBarControllerDelegate method
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("Selected\(viewController.title)")
        
    }
    
    
}




