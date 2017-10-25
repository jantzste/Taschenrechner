//
//  ViewController.swift
//  Taschenrechner
//
//  Created by Stephen Japon Jantz on 15.07.17.
//  Copyright © 2017 Stephen Jantz. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       setNaviBar()
        
        addTitelAndBackground()
        
    }

    
    override func viewDidAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 92/255, green: 162/255, blue: 78/255, alpha: 1)
    }
    

    //add background image for the info
    
    let backgroundImageView: UIImageView = {
        let pictureView = UIImageView()
        pictureView.image = UIImage(named: "QRCode")
        pictureView.frame = CGRect(x: 100, y: 200, width: 200, height: 200)
        
        pictureView.contentMode = UIViewContentMode.scaleAspectFit
        //pictureView.translatesAutoresizingMaskIntoConstraints = false
        return pictureView
    }()
    
    func setNaviBar(){

        self.navigationController?.navigationBar.barTintColor = UIColor(red: 92/255, green: 162/255, blue: 78/255, alpha: 1)
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationItem.title = "CameraApp"
        
        //set backgroundColor of homescreen to white
        self.view.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)

    }
    
    func showControllerForSetting(setting: Setting){
        let settingsViewController = UIViewController()
        settingsViewController.view.backgroundColor = UIColor.white
        settingsViewController.navigationItem.title = setting.name.rawValue
        navigationController?.navigationBar.tintColor = UIColor.white
        navigationController?.pushViewController(settingsViewController, animated: true)
    }
    
    //add the cardView
    func addScrollView(){
        let scrollViewController = renderScrollView()
        let scrollView = scrollViewController
        self.view.addSubview(scrollView.scrollView())
        
    }
    
    //add a title above of the scrollView
    func addTitelAndBackground(){
        let titel = UILabel(frame: CGRect(x: 12, y: 20, width: 200, height: 30))
        titel.textAlignment = .left
        titel.text = "Information"
        titel.textColor = UIColor.black
        titel.font = titel.font.withSize(40)
        
        self.view.addSubview(titel)
        self.view.addSubview(backgroundImageView)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

    
}



