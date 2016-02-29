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
    @IBOutlet weak var exploreView: UIImageView!
    
    @IBOutlet var buttons: [UIButton]!
    
    
    //VARIABLES
    var HomeViewController: UIViewController!
    var SearchViewController: UIViewController!
    var AccountViewController: UIViewController!
    var TrendingViewController: UIViewController!
    
    
    var viewControllers: [UIViewController]!
    
    var selectedIndex: Int = 0
    
    var fadeTransition: FadeTransition!
    
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
        
        self.exploreView.alpha = 1
        if SearchViewController == vc {
            UIView.animateWithDuration(0.4, animations: {
                // This causes first view to fade in and second view to fade out
                self.exploreView.alpha = 0
            })
        } else {
            self.exploreView.alpha = 1
        }
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        
//        // Access the ViewController that you will be transitioning too, a.k.a, the destinationViewController.
//        var ComposeViewController = segue.ComposeViewController
//        
//        // Set the modal presentation style of your destinationViewController to be custom.
//        ComposeViewController.modalPresentationStyle = UIModalPresentationStyle.Custom
//        
//        // Create a new instance of your fadeTransition.
//        fadeTransition = FadeTransition()
//        
//        // Tell the destinationViewController's  transitioning delegate to look in fadeTransition for transition instructions.
//        ComposeViewController.transitioningDelegate = fadeTransition
//        
//        // Adjust the transition duration. (seconds)
//        fadeTransition.duration = 1.0
//    }


}
