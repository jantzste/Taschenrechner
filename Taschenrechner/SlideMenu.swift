//
//  SlideMenu.swift
//  Taschenrechner
//
//  Created by Stephen Japon Jantz on 26.09.17.
//  Copyright © 2017 Stephen Jantz. All rights reserved.
//

import UIKit

@objc protocol SlideMenuDelegate{
    func slideMenuDidSelectButtonAtIndex(index:Int)
    @objc optional func sideBarWillClose()
    @objc optional func sideBarWillOpen()
}

class SlideMenu: NSObject, SlideMenuTableViewControllerDelegate {
    func slideMenuControlDidSelectRow(_ indexPath: IndexPath) {
        delegate?.slideMenuDidSelectButtonAtIndex(index: indexPath.row)
        
    }

    let barWidth:CGFloat = 300
    let sideBarTableViewTopInset:CGFloat = 170
    let sideBarContainerView:UIView = UIView()
    let sideMenuTableViewController: SlideMenuTableViewController = SlideMenuTableViewController()
    var originView:UIView!
    var animator: UIDynamicAnimator!
    var delegate:SlideMenuDelegate?
    var isSideBarOpen:Bool = false
    
    override init() {
        super.init()
        
    }
    
    init(sourceView: UIView, menuItems:Array<String>){
        super.init()
        originView = sourceView
        sideMenuTableViewController.tableData = menuItems
        animator = UIDynamicAnimator(referenceView: originView)
        
        setupSideBar()
        
        let showGestureRecognizer:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(SlideMenu.handleSwipe(recognizer:)))
        showGestureRecognizer.direction = UISwipeGestureRecognizerDirection.right
        originView.addGestureRecognizer(showGestureRecognizer)
        
        let hideGestureRecognizer:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(SlideMenu.handleSwipe(recognizer:)))
        hideGestureRecognizer.direction = UISwipeGestureRecognizerDirection.left
        originView.addGestureRecognizer(hideGestureRecognizer)

    }
  
    func setupSideBar(){

        sideBarContainerView.frame = CGRect(x: -barWidth - 1, y: originView!.frame.origin.y, width: barWidth-1.5, height: originView!.frame.size.height)
        sideBarContainerView.backgroundColor = UIColor.clear
        sideBarContainerView.clipsToBounds = false
        
        originView.addSubview(sideBarContainerView)
        
        let blurView:UIVisualEffectView = UIVisualEffectView(effect: UIBlurEffect(style: UIBlurEffectStyle.light))
        blurView.frame = sideBarContainerView.bounds
        
        sideMenuTableViewController.delegate = self
        sideMenuTableViewController.tableView.frame = sideBarContainerView.bounds
        sideMenuTableViewController.tableView.clipsToBounds = false
        sideMenuTableViewController.tableView.separatorStyle = UITableViewCellSeparatorStyle.none
        sideMenuTableViewController.tableView.backgroundColor = UIColor.white
        sideMenuTableViewController.tableView.scrollsToTop = false
        sideMenuTableViewController.tableView.delegate = sideMenuTableViewController
        sideMenuTableViewController.tableView.contentInset = UIEdgeInsetsMake(sideBarTableViewTopInset, 0, 0, 0)
        sideMenuTableViewController.tableView.reloadData()
        sideMenuTableViewController.tableView.layer.borderWidth = 0.3
        sideMenuTableViewController.tableView.layer.borderColor = UIColor.lightGray.cgColor

        sideMenuTableViewController.tableView.backgroundColor = UIColor(r: 255, g: 255, b: 255)
        
        sideBarContainerView.addSubview(blurView)
        sideBarContainerView.addSubview(sideMenuTableViewController.tableView)

    }

    // edgesForExtendedLayout = .top // or .top

    
   func handleSwipe(recognizer: UISwipeGestureRecognizer){
            
        if recognizer.direction == UISwipeGestureRecognizerDirection.left{
            showSideBar(shouldOpen: false)
            delegate?.sideBarWillClose?()

        }else{
            showSideBar(shouldOpen: true)
            delegate?.sideBarWillOpen?()
        }
        
    }
    
    
    func showSideBar(shouldOpen:Bool){
        
        animator.removeAllBehaviors()
        isSideBarOpen = shouldOpen
        
       // let gravityX:CGFloat = (shouldOpen) ? 0.5: -0.5
        let gravityX:CGFloat = (shouldOpen) ? 0.5: -6.0
        let magnitude:CGFloat = (shouldOpen) ? 20: -6.0
        let boundaryX:CGFloat = (shouldOpen) ? barWidth : -barWidth; -1
        
        let gravityBehavior: UIGravityBehavior = UIGravityBehavior(items: [sideBarContainerView])
        gravityBehavior.gravityDirection = CGVector(dx:gravityX, dy:0)
        animator.addBehavior(gravityBehavior)
        
        let collisionBehavior: UICollisionBehavior = UICollisionBehavior(items: [sideBarContainerView])
        
        collisionBehavior.addBoundary(withIdentifier: "sideMenuBoundary" as NSCopying, from: CGPoint(x: boundaryX, y: 20), to: CGPoint(x:boundaryX, y:originView.frame.size.height))
        animator.addBehavior(collisionBehavior)
        
        let pushBehavior: UIPushBehavior = UIPushBehavior(items: [sideBarContainerView], mode: UIPushBehaviorMode.instantaneous)
        pushBehavior.magnitude = magnitude
        animator.addBehavior(pushBehavior)
        
        let sideBarBehavior:UIDynamicItemBehavior = UIDynamicItemBehavior(items: [sideBarContainerView])
        //sideBarBehavior.elasticity = 0.3
         sideBarBehavior.elasticity = -6
        animator.addBehavior(sideBarBehavior)

        //image for the Sidebar
//        var bgView: UIImageView = UIImageView(image: UIImage(named: "food"))
//        bgView.frame =  CGRect(x: 0, y: 0, width: 300, height: 150) //you might need to modify this frame to your tabbar frame
        
       // bgView.layer.borderColor = UIColor.lightGray.cgColor //set your color here
//        sideBarContainerView.addSubview(bgView)
 
    }


    
}

