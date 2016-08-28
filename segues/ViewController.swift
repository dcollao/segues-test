//
//  ViewController.swift
//  segues
//
//  Created by Diego  Collao on 25-08-16.
//  Copyright © 2016 Undisclosure. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func loadRed(sender: AnyObject!){
        //Use sender to pass data
        let str = "Hey, we just came  from the yellow screen!"
        performSegueWithIdentifier("goToRed", sender: str)
    }

    
    @IBAction func loadYellow(sender: AnyObject!){
        performSegueWithIdentifier("goToYellow", sender: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        //this is were you do work right before this view loads <---
        // keep in mind ** the next view controller has already been initialized but isnt visible in the screen
        if segue.identifier == "goToRed"{
            if let redViewController = segue.destinationViewController as? RedViewController {
                if let theString = sender as? String {
                    redViewController.transferText = theString
                }
            }
        }
        
        }
    }



