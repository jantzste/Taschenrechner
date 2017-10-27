//
//  ViewControllerContainer.swift
//  Taschenrechner
//
//  Created by Stephen Japon Jantz on 12.10.17.
//  Copyright © 2017 Stephen Jantz. All rights reserved.
//

import UIKit

class ViewControllerContainer: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tableData:NSArray = ["first","second"]
    
    var tableView:UITableView!
  

    override func viewDidLoad() {
        super.viewDidLoad()
        setNaviBar()

        setupTableView()
    }
    
    
    func setupTableView(){
        
        let barHeight: CGFloat = UIApplication.shared.statusBarFrame.size.height
        let displayWidth: CGFloat = self.view.frame.width
        let displayHeight: CGFloat = self.view.frame.height
        
        // tableView = UITableView(frame: UIScreen.main.bounds, style: UITableViewStyle.plain)
        tableView = UITableView(frame: CGRect(x: 0, y: 0, width: displayWidth, height: displayHeight -  barHeight))
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "sidebarCell")
        tableView.delegate      =   self
        tableView.dataSource    =   self
        
        //set backgroundColor of the ViewController
        tableView.backgroundColor = UIColor(r: 246, g: 246, b: 246)
        tableView.separatorStyle = .none
        //have to use this to add data to the table
        self.view.addSubview(tableView)
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

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "sidebarCell"
        
        var cell: UITableViewCell? = tableView.dequeueReusableCell(withIdentifier: cellIdentifier)
        
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: cellIdentifier)
            
            let tableData = self.tableData[indexPath.row]
            cell?.textLabel!.text = "test"
            
            
        }

        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }

   
    
    func setNaviBar(){
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 92/255, green: 162/255, blue: 78/255, alpha: 1)
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationItem.title = "Sidebar"
        

        
    }

}

