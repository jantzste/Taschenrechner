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
        finalResultButton()
        numberSevenButton()
        numberEightButton()
        numberNineButton()
        numberFourButton()
        numberFiveButton()
        numberSixButton()
        numberThreeButton()
        numberTwoButton()
        numberOneButton()
        numberZeroButton()
    
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
    
        let btn: UIButton = UIButton(frame: CGRect(x: 316, y: 500, width: 80, height: 50))
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
        
        let btn: UIButton = UIButton(frame: CGRect(x: 316, y: 450, width: 80, height: 50))
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
        
        let btn: UIButton = UIButton(frame: CGRect(x: 316, y: 350, width: 80, height: 50))
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
    
    func finalResultButton (){
        
        let btn: UIButton = UIButton(frame: CGRect(x: 316, y: 550, width: 80, height: 50))
        btn.backgroundColor = UIColor.black
        btn.setTitle("=", for: UIControlState.normal)
        btn.addTarget(self, action: #selector(finalResultButtonAction), for: UIControlEvents.touchUpInside)
        btn.tag = 1
        self.view.addSubview(btn)
    }
    
    func finalResultButtonAction(sender: UIButton!){
        var btnsendtag: UIButton = sender
        if btnsendtag.tag == 1{
            //do anything here
            print("mal gedrückt")
        }else{
            print("nicht gedrückt")
        }
    }
    
    func numberSevenButton (){
        
        let btn: UIButton = UIButton(frame: CGRect(x: 10, y: 350, width: 80, height: 50))
        btn.backgroundColor = UIColor.black
        btn.setTitle("7", for: UIControlState.normal)
        btn.addTarget(self, action: #selector(numberSevenButtonAction), for: UIControlEvents.touchUpInside)
        btn.tag = 1
        self.view.addSubview(btn)
    }
    
    func numberSevenButtonAction(sender: UIButton!){
        var btnsendtag: UIButton = sender
        if btnsendtag.tag == 1{
            //do anything here
            print("7 gedrückt")
        }else{
            print("nicht gedrückt")
        }
    }
    
    func numberEightButton (){
        
        let btn: UIButton = UIButton(frame: CGRect(x: 100, y: 350, width: 80, height: 50))
        btn.backgroundColor = UIColor.black
        btn.setTitle("8", for: UIControlState.normal)
        btn.addTarget(self, action: #selector(numberEightButtonAction), for: UIControlEvents.touchUpInside)
        btn.tag = 1
        self.view.addSubview(btn)
    }
    
    func numberEightButtonAction(sender: UIButton!){
        var btnsendtag: UIButton = sender
        if btnsendtag.tag == 1{
            //do anything here
            print("8 gedrückt")
        }else{
            print("nicht gedrückt")
        }
    }
    
    func numberNineButton (){
        
        let btn: UIButton = UIButton(frame: CGRect(x: 190, y: 350, width: 80, height: 50))
        btn.backgroundColor = UIColor.black
        btn.setTitle("9", for: UIControlState.normal)
        btn.addTarget(self, action: #selector(numberNineButtonAction), for: UIControlEvents.touchUpInside)
        btn.tag = 1
        self.view.addSubview(btn)
    }
    
    func numberNineButtonAction(sender: UIButton!){
        var btnsendtag: UIButton = sender
        if btnsendtag.tag == 1{
            //do anything here
            print("9 gedrückt")
        }else{
            print("nicht gedrückt")
        }
    }
    
    func numberFourButton (){
        
        let btn: UIButton = UIButton(frame: CGRect(x: 10, y: 400, width: 80, height: 50))
        btn.backgroundColor = UIColor.black
        btn.setTitle("4", for: UIControlState.normal)
        btn.addTarget(self, action: #selector(numberFourButtonAction), for: UIControlEvents.touchUpInside)
        btn.tag = 1
        self.view.addSubview(btn)
    }
    
    func numberFourButtonAction(sender: UIButton!){
        var btnsendtag: UIButton = sender
        if btnsendtag.tag == 1{
            //do anything here
            print("4 gedrückt")
        }else{
            print("nicht gedrückt")
        }
    }
    
    func numberFiveButton (){
        
        let btn: UIButton = UIButton(frame: CGRect(x: 100, y: 400, width: 80, height: 50))
        btn.backgroundColor = UIColor.black
        btn.setTitle("5", for: UIControlState.normal)
        btn.addTarget(self, action: #selector(numberFiveButtonAction), for: UIControlEvents.touchUpInside)
        btn.tag = 1
        self.view.addSubview(btn)
    }
    
    func numberFiveButtonAction(sender: UIButton!){
        var btnsendtag: UIButton = sender
        if btnsendtag.tag == 1{
            //do anything here
            print("5 gedrückt")
        }else{
            print("nicht gedrückt")
        }
    }
    
    func numberSixButton (){
        
        let btn: UIButton = UIButton(frame: CGRect(x: 190, y: 400, width: 80, height: 50))
        btn.backgroundColor = UIColor.black
        btn.setTitle("6", for: UIControlState.normal)
        btn.addTarget(self, action: #selector(numberSixButtonAction), for: UIControlEvents.touchUpInside)
        btn.tag = 1
        self.view.addSubview(btn)
    }
    
    func numberSixButtonAction(sender: UIButton!){
        var btnsendtag: UIButton = sender
        if btnsendtag.tag == 1{
            //do anything here
            print("6 gedrückt")
        }else{
            print("nicht gedrückt")
        }
    }
    
    
    func numberThreeButton (){
        
        let btn: UIButton = UIButton(frame: CGRect(x: 10, y: 450, width: 80, height: 50))
        btn.backgroundColor = UIColor.black
        btn.setTitle("3", for: UIControlState.normal)
        btn.addTarget(self, action: #selector(numberThreeButtonAction), for: UIControlEvents.touchUpInside)
        btn.tag = 1
        self.view.addSubview(btn)
    }
    
    func numberThreeButtonAction(sender: UIButton!){
        var btnsendtag: UIButton = sender
        if btnsendtag.tag == 1{
            //do anything here
            print("3 gedrückt")
        }else{
            print("nicht gedrückt")
        }
    }
    
    
    func numberTwoButton (){
        
        let btn: UIButton = UIButton(frame: CGRect(x: 100, y: 450, width: 80, height: 50))
        btn.backgroundColor = UIColor.black
        btn.setTitle("2", for: UIControlState.normal)
        btn.addTarget(self, action: #selector(numberTwoButtonAction), for: UIControlEvents.touchUpInside)
        btn.tag = 1
        self.view.addSubview(btn)
    }
    
    func numberTwoButtonAction(sender: UIButton!){
        var btnsendtag: UIButton = sender
        if btnsendtag.tag == 1{
            //do anything here
            print("2 gedrückt")
        }else{
            print("nicht gedrückt")
        }
    }
    
    func numberOneButton (){
        
        let btn: UIButton = UIButton(frame: CGRect(x: 190, y: 450, width: 80, height: 50))
        btn.backgroundColor = UIColor.black
        btn.setTitle("1", for: UIControlState.normal)
        btn.addTarget(self, action: #selector(numberOneButtonAction), for: UIControlEvents.touchUpInside)
        btn.tag = 1
        self.view.addSubview(btn)
    }
    
    func numberOneButtonAction(sender: UIButton!){
        var btnsendtag: UIButton = sender
        if btnsendtag.tag == 1{
            //do anything here
            print("1 gedrückt")
        }else{
            print("nicht gedrückt")
        }
    }
    
    
    func numberZeroButton (){
        
        let btn: UIButton = UIButton(frame: CGRect(x: 100, y: 500, width: 80, height: 50))
        btn.backgroundColor = UIColor.black
        btn.setTitle("0", for: UIControlState.normal)
        btn.addTarget(self, action: #selector(numberZeroButtonAction), for: UIControlEvents.touchUpInside)
        btn.tag = 1
        self.view.addSubview(btn)
    }
    
    func numberZeroButtonAction(sender: UIButton!){
        var btnsendtag: UIButton = sender
        if btnsendtag.tag == 1{
            //do anything here
            print("0 gedrückt")
        }else{
            print("nicht gedrückt")
        }
    }
    

    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}



