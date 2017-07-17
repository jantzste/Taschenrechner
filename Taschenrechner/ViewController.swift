//
//  ViewController.swift
//  Taschenrechner
//
//  Created by Stephen Japon Jantz on 15.07.17.
//  Copyright © 2017 Stephen Jantz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.barTintColor = UIColor.black
        //self.navigationController?.navigationBar.tintColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationItem.title = "Taschenrechner"
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName:UIColor.white]



    }

    override func viewDidLoad() {
        super.viewDidLoad()
    

        view.backgroundColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
     
        setNaviBar()
        plusButton()
        minusButton()
        divideButton()
        sumButton()
    
    }
    
    
    func setNaviBar(){

        //create left NavigationButton
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Verlauf", style: .plain, target: self, action: #selector(handelMenu))
        

        //set the color
        navigationItem.leftBarButtonItem?.tintColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)

        
    }

    

    func handelMenu(){
        let menuController = MenuViewController()
        present(menuController, animated: true, completion: nil)
    }
    
    func plusButton (){
    
        let btn: UIButton = UIButton(frame: CGRect(x: 16, y: 400, width: 80, height: 50))
        btn.backgroundColor = UIColor.black
        btn.setTitle("+", for: UIControlState.normal)
        btn.addTarget(self, action: #selector(plusButtonAction), for: UIControlEvents.touchUpInside)
        btn.tag = 1
        self.view.addSubview(btn)
    }
    
    func plusButtonAction(sender: UIButton!){
        var btnsendtag: UIButton = sender
        if btnsendtag.tag == 1{
            //do anything here
            print("plus gedrückt")
        }else{
            print("nicht gedrückt")
        }
    }
    
    func minusButton (){
        
        let btn: UIButton = UIButton(frame: CGRect(x: 116, y: 400, width: 80, height: 50))
        btn.backgroundColor = UIColor.black
        btn.setTitle("-", for: UIControlState.normal)
        btn.addTarget(self, action: #selector(minusButtonAction), for: UIControlEvents.touchUpInside)
        btn.tag = 1
        self.view.addSubview(btn)
    }
    
    func minusButtonAction(sender: UIButton!){
        var btnsendtag: UIButton = sender
        if btnsendtag.tag == 1{
            //do anything here
            print("minus gedrückt")
        }else{
            print("nicht gedrückt")
        }
    }
    
    
    func divideButton (){
        
        let btn: UIButton = UIButton(frame: CGRect(x: 216, y: 400, width: 80, height: 50))
        btn.backgroundColor = UIColor.black
        btn.setTitle("/", for: UIControlState.normal)
        btn.addTarget(self, action: #selector(divideButtonAction), for: UIControlEvents.touchUpInside)
        btn.tag = 1
        self.view.addSubview(btn)
    }
    
    func divideButtonAction(sender: UIButton!){
        var btnsendtag: UIButton = sender
        if btnsendtag.tag == 1{
            //do anything here
            print("geteilt gedrückt")
        }else{
            print("nicht gedrückt")
        }
    }
    
    func sumButton (){
        
        let btn: UIButton = UIButton(frame: CGRect(x: 316, y: 400, width: 80, height: 50))
        btn.backgroundColor = UIColor.black
        btn.setTitle("*", for: UIControlState.normal)
        btn.addTarget(self, action: #selector(sumButtonAction), for: UIControlEvents.touchUpInside)
        btn.tag = 1
        self.view.addSubview(btn)
    }
    
    func sumButtonAction(sender: UIButton!){
        var btnsendtag: UIButton = sender
        if btnsendtag.tag == 1{
            //do anything here
            print("mal gedrückt")
        }else{
            print("nicht gedrückt")
        }
    }

    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}



