//
//  ComposeViewController.swift
//  Tumblr
//
//  Created by Blake Hudelson on 2/21/16.
//  Copyright © 2016 Blake Hudelson. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {
    
    @IBOutlet var composeButtons: [UIImageView]!
    
    var composeButtonOrigins = [CGPoint]()


    @IBOutlet var composeBackground: UIView!
   
    @IBAction func dismissComposeViewController(sender: AnyObject) {
        
        dismissViewControllerAnimated(false, completion: nil)
        print("dismiss Compose Modal")
    }
   
    
    
    
    
    
    
    //VIEW DID LOAD
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        
        // Set compose icons to start below screen
        
        for var i = 0; i < composeButtons.count; i++ {
            
            print("Size of Compose Array: ", composeButtons.count)
            print("Moving down compose #", i, " by 500 px from original y point of ", composeButtons[i].frame.origin.y)
            
            //Store original location in array
            composeButtonOrigins.append(composeButtons[i].frame.origin)
            
            //Move the buttons down
            
            composeButtons[i].frame.origin.y = composeButtons[i].frame.origin.y + 500
            
        }
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidLoad()
        
        for var i = 0; i < composeButtons.count; i++ {
            
            UIView.animateWithDuration(1, delay: 0.5, usingSpringWithDamping: 0.5, initialSpringVelocity: 0, options: [], animations: { () -> Void in
                
                self.composeButtons[i].frame.origin = self.composeButtonOrigins[i]
                
                }, completion: nil)
            
            
        }
        
    
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
