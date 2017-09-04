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
    
    //    override func viewWillAppear(_ animated: Bool) {
    //        super.viewWillAppear(animated)
    
    //    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setNaviBar()
        
        setScrollView()
        
        firstIconButton()
        
    }
    
    
    func setNaviBar(){
        
        //create left NavigationButton
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Sidebar", style: .plain, target: self, action: #selector(handleMore))
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Verlauf", style: .plain, target: self, action: #selector(handelMenu))
        
        //set the color
        navigationItem.leftBarButtonItem?.tintColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
        navigationItem.rightBarButtonItem?.tintColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
        
        
        //set the navigation title
        self.navigationController?.navigationBar.barTintColor = UIColor.black
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationItem.title = "Rechner"
        
        //set backgroundColor of homescreen to white
        self.view.backgroundColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
        
    }
    
    let settingsLauncher = SettingsLauncher()
    
    func handleMore(){
        
        //show menu
        settingsLauncher.showSettings()
    }
    
    
    func handelMenu(){
        let menuController = MenuViewController()
        present(menuController, animated: true, completion: nil)
        
    }
    
    //add the cardView
    func setScrollView(){
        let scrollViewController = renderScrollView()
        let scrollView = scrollViewController
        self.view.addSubview(scrollView.scrollView())
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



