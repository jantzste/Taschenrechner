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
        
        //numberInput()
        
        //addCalculationButtons()
        
        addScrollView()
        
        firstIconButton()
        
     
        
    }
    
    
    func addCalculationButtons(){
        
        //add the finalResultButton
        let finalResultBtn = FinalResultButton()
        let finalResulatCalculation = finalResultBtn.finalResultButton()
        self.view.addSubview(finalResulatCalculation)
        
        
        //add the pulsButton
        let plusBtn = PlusButton()
        let plusCalculation = plusBtn.plusButton()
        self.view.addSubview(plusCalculation)
        
        //add the minusButton
        let minusBtn = MinusButton()
        let minusCalculation = minusBtn.minusButton()
        self.view.addSubview(minusCalculation)
        
        
        //add the divideButton
        let divideBtn = DivideButton()
        let divideCalculation = divideBtn.divideButton()
        self.view.addSubview(divideCalculation)
        
        
        //add the multiplicationButton
        let multiplicationBtn = MultiplicationButton()
        let multiplicationCalculation = multiplicationBtn.multiplicationButton()
        self.view.addSubview(multiplicationCalculation)
        
        
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
    func addScrollView(){
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

    
    func numberInput(){
        
        let background = UIView(frame: CGRect(x: 0, y: 10, width: 420, height: 80))
        background.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        self.view.addSubview(background)
        
        let numberInput = UILabel(frame: CGRect(x: 15, y: 10, width: 385, height: 60))
        numberInput.text = "test"
        numberInput.textColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
        numberInput.font = UIFont.italicSystemFont(ofSize: 60)
        
        background.addSubview(numberInput)
        
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}



