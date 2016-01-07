//
//  ViewController.swift
//  KiWi
//
//  Created by Kenny Lee on 7/13/15.
//  Copyright (c) 2015 Hippo. All rights reserved.
//

import UIKit
import SystemConfiguration.CaptiveNetwork

class ViewController: UIViewController {

    
    @IBOutlet weak private var networkLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // set the Newtork label to the network name
        if let networkName = self.getNetworkName()
        {
            self.networkLabel.text = networkName
            print(Keychain.get(networkName))
        }
        else
        {
            print(Keychain.get("WBJWL"))
            self.networkLabel.text = "Unavailable"
        }

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    internal func getNetworkName() -> String? {
    
        var currentSSID = ""
        if let interfaces:CFArray! = CNCopySupportedInterfaces() {
            
            print("这个CFArrayGetCount的计数是.....\(interfaces)")
            for i in 0..<CFArrayGetCount(interfaces){
                let interfaceName: UnsafePointer<Void> = CFArrayGetValueAtIndex(interfaces, i)
                let rec = unsafeBitCast(interfaceName, AnyObject.self)
                let unsafeInterfaceData = CNCopyCurrentNetworkInfo("\(rec)")
                if unsafeInterfaceData != nil {
                    let interfaceData = unsafeInterfaceData! as Dictionary!
                    currentSSID = interfaceData["SSID"] as! String
                }
            }
        }
        print("SSID is \(currentSSID)")
        return currentSSID
    }
    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        
//        if (segue.identifier=="NewClass"){
//            let myDestVC = segue.destinationViewController as! ShowQrcViewController
//            
        
   
    
    

}