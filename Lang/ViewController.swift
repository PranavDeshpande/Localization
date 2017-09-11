//
//  ViewController.swift
//  Lang
//
//  Created by Pranav Shashikant Deshpande on 7/12/17.
//  Copyright © 2017 Pranav Shashikant Deshpande. All rights reserved.
//

import UIKit
import Loki

class ViewController: UIViewController {
    @IBOutlet weak var myLabel: UILabel!
    
    @IBAction func btnAction(_ sender: UIButton)
    {
        if let item = LKManager.sharedInstance().languages[2] as? LKLanguage{
            LKManager.sharedInstance().currentLanguage = item
           
        }
       myLabel.text = NSLocalizedString("KeyTesting", comment: "")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myLabel.text = NSLocalizedString("KeyTesting", comment: "")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

