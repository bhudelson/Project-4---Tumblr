//
//  TabBarViewController.swift
//  Tumblr
//
//  Created by Blake Hudelson on 2/21/16.
//  Copyright © 2016 Blake Hudelson. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {

    //OUTLETS
    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var composeButton: UIButton!
    @IBOutlet weak var AccountButton: UIButton!
    @IBOutlet weak var trendingButton: UIButton!
    @IBOutlet weak var contentView: UIView!
    
    @IBOutlet var buttons: [UIButton]!
    
    
    //VARIABLES
    var HomeViewController: UIViewController!
    var SearchViewController: UIViewController!
    var AccountViewController: UIViewController!
    var TrendingViewController: UIViewController!
    
    
    var viewControllers: [UIViewController]!
    
    var selectedIndex: Int = 0
    
    
    
    //VIEW DID LOAD
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        HomeViewController = storyboard.instantiateViewControllerWithIdentifier("HomeViewController")
        
        SearchViewController = storyboard.instantiateViewControllerWithIdentifier("SearchViewController")
        
        AccountViewController = storyboard.instantiateViewControllerWithIdentifier("AccountViewController")
        
        TrendingViewController = storyboard.instantiateViewControllerWithIdentifier("TrendingViewController")
        
        viewControllers = [HomeViewController, SearchViewController, AccountViewController, TrendingViewController]
        
        buttons[selectedIndex].selected = true
        didPressTab(buttons [selectedIndex])

    }
    
    @IBAction func didPressTab(sender: UIButton) {
        
        let previousIndex = selectedIndex
        
        selectedIndex = sender.tag
        
        buttons[previousIndex].selected = false
        
        let previousVC = viewControllers[previousIndex]
        
        previousVC.willMoveToParentViewController(nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParentViewController()
        
        sender.selected = true
        
        let vc = viewControllers[selectedIndex]
        
        addChildViewController(vc)
        
        vc.view.frame = contentView.bounds
        contentView.addSubview(vc.view)
        
        didMoveToParentViewController(self)
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
