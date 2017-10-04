//
//  SlideMenuTableViewController.swift
//  Taschenrechner
//
//  Created by Stephen Japon Jantz on 26.09.17.
//  Copyright © 2017 Stephen Jantz. All rights reserved.
//

import UIKit

protocol SlideMenuTableViewControllerDelegate {
    func slideMenuControlDidSelectRow(_ indexPath:IndexPath)
}

class SlideMenuTableViewController: UITableViewController {
    
    var delegate:SlideMenuTableViewControllerDelegate?
    var tableData:Array<String> = []

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: UITableViewCell? = tableView.dequeueReusableCell(withIdentifier: "slideCell")

        if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "slideCell")
            
            //Configure the cell...
            cell!.backgroundColor = UIColor.clear
            cell!.textLabel?.textColor = UIColor.darkText
            
            let selectedView:UIView = UIView(frame: CGRect(x: 0, y: 0, width: cell!.frame.size.width, height: cell!.frame.size.height))
            selectedView.backgroundColor = UIColor.black.withAlphaComponent(0.3)
            cell!.selectedBackgroundView = selectedView
            
        }
        
        cell!.textLabel?.text = tableData[indexPath.row]
        
        return cell!
    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 45.0
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        delegate?.slideMenuControlDidSelectRow(indexPath)
    }

}
