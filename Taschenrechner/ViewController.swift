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
//add the finalResultButton
        let renderObj = renderButton()
        let finalResultButton = renderObj.finalResultButton()
        self.view.addSubview(finalResultButton)

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



    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}



