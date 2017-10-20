//
//  ListViewController.swift
//  Taschenrechner
//
//  Created by Stephen Japon Jantz on 18.10.17.
//  Copyright © 2017 Stephen Jantz. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {
    
    //add the cardView
    func addScrollView(){
        let scrollViewController = renderScrollView()
        let scrollView = scrollViewController
        self.view.addSubview(scrollView.scrollView())
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        addScrollView()
        setNaviBar()
        addTitelAndBackground()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 92/255, green: 162/255, blue: 78/255, alpha: 1)

    }
    
    
    //add a title above of the scrollView
    func addTitelAndBackground(){
        let titel = UILabel(frame: CGRect(x: 12, y: 20, width: 200, height: 21))
        titel.textAlignment = .left
        titel.text = "Ihre Liste"
        titel.textColor = UIColor.black
        titel.font = titel.font.withSize(20)
        
        self.view.addSubview(titel)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//    
//    override func viewWillAppear(_ animated: Bool) {
//        self.view.backgroundColor = UIColor(red: 92/255, green: 162/255, blue: 78/255, alpha: 1)
//
//    }
//    
    
    func setNaviBar(){
        
        self.navigationController?.navigationBar.barTintColor = UIColor.black
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationItem.title = "CameraApp"
        
        //set backgroundColor of homescreen
        //self.view.backgroundColor = UIColor(red: 92/255, green: 162/255, blue: 78/255, alpha: 1)

    }

}
