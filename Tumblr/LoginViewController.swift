//
//  LoginViewController.swift
//  Tumblr
//
//  Created by Blake Hudelson on 2/28/16.
//  Copyright © 2016 Blake Hudelson. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        func keyboardWillShow(notification: NSNotification!) {
            
        }
        
        func keyboardWillHide(notification: NSNotification!) {
            
        }

        // Do any additional setup after loading the view.
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
