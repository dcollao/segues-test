//
//  RedViewController.swift
//  segues
//
//  Created by Diego  Collao on 26-08-16.
//  Copyright © 2016 Undisclosure. All rights reserved.
//

import UIKit

class RedViewController: UIViewController {
    
    @IBOutlet weak var mainLabel: UILabel!
    var transferText: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        mainLabel.text = transferText
    }


}
