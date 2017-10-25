//
//  tableViewContent.swift
//  Taschenrechner
//
//  Created by Stephen Japon Jantz on 12.10.17.
//  Copyright © 2017 Stephen Jantz. All rights reserved.
//

import UIKit

class tableViewContent: UITableView, UITableViewDelegate, UITableViewDataSource{
    
    
    var tableData = [
        ["name":"Item1","image":"food"], ["name":"Item2","image":"GreenBackground"],["name":"Item3","image":"QRCode"]
    ]
    
     var tableView: UITableView = UITableView()
    
    
    //initialize and set tableView variable
    func setupTableView(){
        
        tableView = UITableView(frame: UIScreen.main.bounds, style: UITableViewStyle.plain)
        tableView.delegate      =   self
        tableView.dataSource    =   self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "sidebarCell")
       
        //set backgroundColor of the ViewController
        tableView.backgroundColor = UIColor(red: 246/255, green: 246/255, blue: 246/255, alpha: 246/255)
        tableView.separatorStyle = .none
        
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

}

