//
//  ViewController.swift
//  DemoIOS
//
//  Created by le.huu.dung on 10/26/18.
//  Copyright © 2018 doan.van.toan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLabel: NSLayoutConstraint!
    @IBOutlet weak var topMainView: NSLayoutConstraint!
    
    @IBOutlet weak var topMutipleLabel: NSLayoutConstraint!
    @IBOutlet weak var multipleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        multipleLabel.frame.size.height = 0
        
        
    }
    
    @IBAction func hide(_ sender: Any) {
//        multipleLabel.isHidden = true
        print("topMain:\(topMainView.constant)")
        print("topMu: \(topMutipleLabel.constant)")
        heightLabel.constant = 0
    }
    
    @IBAction func hien(_ sender: Any) {
//        multipleLabel.isHidden = false
        multipleLabel.sizeToFit()
        heightLabel.constant = multipleLabel.frame.height
    }
}

