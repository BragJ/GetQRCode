//
//  MyCodeViewController.swift
//  swiftScan
//
//  Created by xialibing on 15/12/10.
//  Copyright © 2015年 xialibing. All rights reserved.
//

import UIKit
import Foundation
import AVFoundation


class ShowQrcViewController: UIViewController {

    @IBOutlet weak var myCode: UILabel!
    
    @IBOutlet weak var QRCode: UIImageView!
  
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.view.hidden = true
        //self.performSegueWithIdentifier("getQRC", sender: self)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
  
}
