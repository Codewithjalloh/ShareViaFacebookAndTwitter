//
//  ViewController.swift
//  ShareViaFacebookAndTwitter
//
//  Created by wealthyjalloh on 28/06/2016.
//  Copyright © 2016 CWJ. All rights reserved.
//

import UIKit
import Social
import Accounts

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func facebookButton(sender: AnyObject) {
        let url: NSURL = NSURL(string: "https://www.github.com/")!
        
        let fbController = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
        fbController.setInitialText("")
        fbController.addURL(url)
        
        let completionHandler = {(result: SLComposeViewControllerResult) -> () in
            switch (result) {
            case .Cancelled:
                print("User canceled", terminator: "")
            case .Done:
                print("User posted", terminator: "")
            }
        }
        
        fbController.completionHandler = completionHandler
        self.presentViewController(fbController, animated: true, completion: nil)
    }
    
    
    @IBAction func twitterButton(sender: AnyObject) {
        let worldMapImage = UIImage(named: "worldmap.jpg")!
        
        let twController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
        twController.setInitialText("")
        twController.addImage(worldMapImage)
        
        
        let completionHandler = {(result: SLComposeViewControllerResult) -> () in
            switch (result) {
            case .Cancelled:
                print("User canceled", terminator: "")
            case .Done:
                print("User posted", terminator: "")
            }
        }
        
        twController.completionHandler = completionHandler
        self.presentViewController(twController, animated: true, completion: nil)
        
        
        
        
        
    }


}

