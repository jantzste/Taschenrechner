//
//  ViewControllerContainer.swift
//  Taschenrechner
//
//  Created by Stephen Japon Jantz on 12.10.17.
//  Copyright © 2017 Stephen Jantz. All rights reserved.
//

import UIKit

class ViewControllerContainer: UIViewController {
    
    let table:tableViewContent = tableViewContent()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setNaviBar()
        
        table.setupTableView()
        
        self.view.addSubview(table.tableView)

    }

//    func setLogo(){
//
//        tableView.addSubview(whiteView)
//        whiteView.frame = CGRect(x: 5, y: 10, width: 365, height: 600)
//        whiteView.backgroundColor = UIColor.white
//
//        let imageView = UIImageView()
//        imageView.image = UIImage(named: "food")
//        imageView.frame = CGRect(x: 5, y: 10, width: 355, height: 260)
//        tableView.addSubview(imageView)
//        self.whiteView.addSubview(imageView)
//
//        let horizontalConstraint = tableView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
//        let verticalConstraint = tableView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
//        NSLayoutConstraint.activate([horizontalConstraint, verticalConstraint])
//
//    }
//
   
    
    func setNaviBar(){
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 92/255, green: 162/255, blue: 78/255, alpha: 1)
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationItem.title = "Sidebar"
        

        
    }

}

