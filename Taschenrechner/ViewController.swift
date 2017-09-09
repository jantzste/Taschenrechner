//
//  ViewController.swift
//  Taschenrechner
//
//  Created by Stephen Japon Jantz on 15.07.17.
//  Copyright © 2017 Stephen Jantz. All rights reserved.
//

import UIKit

//for the camera
import AVFoundation

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setNaviBar()
        
        setScrollView()
        
        //firstIconButton()
        
        setTitel()
        
        
    }
    
    let cameraButton: UIButton = {
        let button = UIButton()
        
        let buttoBackground = UIImage(named: "ic_photo_camera_36pt") as UIImage?
        button.setImage(buttoBackground, for: .normal)
        
        return button
    }()
    
    
    let buttonMenu1: UIButton = {
        
        let buttonG1 = UIButton()
        buttonG1.backgroundColor = UIColor.red
        
        let backgroundimage1 = UIImage(named: "ic_3d_rotation_36pt") as UIImage?
        buttonG1.setImage(backgroundimage1, for: .normal)
        
        return buttonG1
    }()

    
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
        launcher.homeController = self
        return launcher
    }()
    
    func handleMore(){
        
        //show menu
        settingsLauncher.showSettings()
    }
    
    func showControllerForSetting(setting: Setting){
        let dummySettingsViewController = UIViewController()
        dummySettingsViewController.view.backgroundColor = UIColor.white
        dummySettingsViewController.navigationItem.title = setting.name
        navigationController?.navigationBar.tintColor = UIColor.white
        navigationController?.pushViewController(dummySettingsViewController, animated: true)
    }
    
    
    func handelMenu(){
        let menuController = MenuViewController()
        navigationController?.pushViewController(menuController, animated: false)
    }
    
    //add the cardView
    func setScrollView(){
        let scrollViewController = renderScrollView()
        let scrollView = scrollViewController
        self.view.addSubview(scrollView.scrollView())
        
    }
    
    //add a title above of the scrollView
    func setTitel(){
        let titel = UILabel(frame: CGRect(x: 12, y: 20, width: 200, height: 21))
        titel.textAlignment = .left
        titel.text = "Homescreen"
        titel.textColor = UIColor.black
        titel.font = titel.font.withSize(20)
        
        self.view.addSubview(titel)
        
    }
    
    
    //add the iconButton
    func firstIconButton () -> UIButton{
        
        let btn: UIButton = UIButton(frame: CGRect(x: 100, y: 480, width: 80, height: 50))
        btn.backgroundColor = UIColor.blue
        btn.setTitle("Test", for: UIControlState.normal)
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(iconButtonAction), for: .touchUpInside)
        btn.tag = 1
        
        self.view.addSubview(btn)
        
        return btn
    }
    
    //show iconMenu
    let iconLauncher = IconLauncher()
    
    func iconButtonAction(sender: UIButton!){
        iconLauncher.showSettings()
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}



