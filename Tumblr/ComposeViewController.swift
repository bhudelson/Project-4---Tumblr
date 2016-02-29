//
//  ComposeViewController.swift
//  Tumblr
//
//  Created by Blake Hudelson on 2/21/16.
//  Copyright © 2016 Blake Hudelson. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {
    
    //OUTLETS
    @IBOutlet weak var textButton: UIImageView!
    @IBOutlet weak var photoButton: UIImageView!
    @IBOutlet weak var quoteButton: UIImageView!
    @IBOutlet weak var linkButton: UIImageView!
    @IBOutlet weak var chatButton: UIImageView!
    @IBOutlet weak var videoButton: UIImageView!
    @IBOutlet weak var nevermindButton: UIButton!
    
  
    //VARIABLES
    var photoStartPosition: CGFloat!
    var photoOffset: CGFloat!
   
    
    //VIEW DID LOAD
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoStartPosition = photoButton.frame.origin.y
        photoOffset = 600
        
    }
    
    
    //VIEW WILL APPEAR
    override func viewWillAppear(animated: Bool) {
        
        // Set compose buttons to start below screen
        
        self.photoButton.center.y = 600
        self.quoteButton.center.y = 600
        self.textButton.center.y = 600
        self.chatButton.center.y = 600
        self.linkButton.center.y = 600
        self.videoButton.center.y = 600
        
        
        
    }
    
    
    //VIEW DID APPEAR
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(0.4, animations: { () -> Void in
            self.textButton.center.y = 157
            }) { (Bool) -> Void in
        }
        
        UIView.animateWithDuration(0.3, animations: { () -> Void in
            self.photoButton.center.y = 157
            }) { (Bool) -> Void in
        }
        
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            self.quoteButton.center.y = 157
            }) { (Bool) -> Void in
        }
        
        UIView.animateWithDuration(0.6, animations: { () -> Void in
            self.chatButton.center.y = 288
            }) { (Bool) -> Void in
        }
        
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            self.linkButton.center.y = 288
            }) { (Bool) -> Void in
        }
        
        UIView.animateWithDuration(0.7, animations: { () -> Void in
            self.videoButton.center.y = 288
            }) { (Bool) -> Void in
        }
        
    
    }

    
    @IBAction func dismissCompose(sender: AnyObject) {
        
        self.textButton.center.y = 157
        UIView.animateWithDuration(0.4, animations: { () -> Void in
            self.textButton.center.y = -300
            }) { (Bool) -> Void in
        }
        
        self.photoButton.center.y = 157
        UIView.animateWithDuration(0.2, animations: { () -> Void in
            self.photoButton.center.y = -300
            }) { (Bool) -> Void in
        }
        
        self.quoteButton.center.y = 157
        UIView.animateWithDuration(0.3, animations: { () -> Void in
            self.quoteButton.center.y = -300
            }) { (Bool) -> Void in
        }
        
        
        self.chatButton.center.y = 288
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            self.chatButton.center.y = -300
            }) { (Bool) -> Void in
        }
        
        self.linkButton.center.y = 288
        UIView.animateWithDuration(0.6, animations: { () -> Void in
            self.linkButton.center.y = -300
            }) { (Bool) -> Void in
        }
        
        self.videoButton.center.y = 288
        UIView.animateWithDuration(0.7, animations: { () -> Void in
            self.videoButton.center.y = -300
            }) { (Bool) -> Void in
        }
        
        let seconds = 0.8
        let delay = seconds * Double(NSEC_PER_SEC)
        let dispatchTime = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
        
        dispatch_after(dispatchTime, dispatch_get_main_queue(), {
            
            self.photoButton.center.y = -1000
            self.quoteButton.center.y = -1000
            self.textButton.center.y = -1000
            self.chatButton.center.y = -1000
            self.linkButton.center.y = -1000
            self.videoButton.center.y = -1000
            
            self.dismissViewControllerAnimated(true, completion: nil)
            
        })
        
            
    
        
        
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
