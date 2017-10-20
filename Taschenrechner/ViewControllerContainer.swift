//
//  ViewControllerContainer.swift
//  Taschenrechner
//
//  Created by Stephen Japon Jantz on 12.10.17.
//  Copyright © 2017 Stephen Jantz. All rights reserved.
//

import UIKit

class CustomerTableViewCell: UITableViewCell{
    
    
}

class ViewControllerContainer: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var tableData = [
        ["name":"Item1","image":"food"], ["name":"Item2","image":"GreenBackground"],["name":"Item3","image":"QRCode"]
    ];
    
    var tableView: UITableView = UITableView()
    var color: UIColor = UIColor.lightGray
    var whiteView: UIView = UIView()
    
    // let myDict : NSDictionary = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setNaviBar()
        
        setupTableView()
        
        //setLogo()
        
    }
    

    
    func setLogo(){
        
        tableView.addSubview(whiteView)
        whiteView.frame = CGRect(x: 5, y: 10, width: 365, height: 600)
        whiteView.backgroundColor = UIColor.white
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: "food")
        imageView.frame = CGRect(x: 5, y: 10, width: 355, height: 260)
        tableView.addSubview(imageView)
        self.whiteView.addSubview(imageView)
        
        let horizontalConstraint = tableView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        let verticalConstraint = tableView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        NSLayoutConstraint.activate([horizontalConstraint, verticalConstraint])
        
    }
    
    
    //initialize and set tableView variable
    func setupTableView(){
        
        tableView = UITableView(frame: UIScreen.main.bounds, style: UITableViewStyle.plain)
        tableView.delegate      =   self
        tableView.dataSource    =   self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "sidebarCell")
        tableView.backgroundColor = color
        tableView.separatorStyle = .none
        
        self.view.addSubview(self.tableView)
    }
    
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
            cell?.textLabel?.text = tableData["name"]!
            cell?.textLabel?.textColor = UIColor.black
            cell?.imageView?.image = UIImage(named: tableData["image"]!)
            
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
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

