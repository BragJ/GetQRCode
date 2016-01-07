//
//  ReceivingViewController.swift
//  KiWi
//
//  Created by Kenny Lee on 7/14/15.
//  Copyright (c) 2015 Hippo. All rights reserved.
//

import UIKit
import MultipeerConnectivity
import CoreBluetooth
/*
class ReceivingViewController: UIViewController {
    
    //Should check if user has bluetooth enabled. Will then receive a pop-up request from the hosting device, and should utilize the progress bar to show packets received. Once logged in, should segue to the success page.
    var appDelegate:AppDelegate!
   // var CBPManager: CBPeripheralManager!
    
    
    
    // function necessary for bluetooth
  /*  func peripheralManagerDidUpdateState(peripheral: CBPeripheralManager){
        switch (peripheral.state) {
            
        case .PoweredOn:
            
            // set up MPC
            
            appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
            appDelegate.mpcHandler.setupPeerWithDisplayName(UIDevice.currentDevice().name)
            appDelegate.mpcHandler.setupSession()
            appDelegate.mpcHandler.advertiseSelf(true)
                        
            NSNotificationCenter.defaultCenter().addObserver(self, selector: "handleReceivedDataWithNotification:", name: "MPC_DidReceiveDataNotification", object: nil)
            
        default:
            break
            
        }
    }*/
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    //二维码
    var qrView = UIView()
    var qrImgView = UIImageView()
    
    //条形码
    var tView = UIView()
    var tImgView = UIImageView()
    
    //MARK: ------二维码、条形码显示位置
    func drawCodeShowView()
    {
        //二维码
        
        let rect = CGRectMake( (CGRectGetWidth(self.view.frame)-CGRectGetWidth(self.view.frame)*5/6)/2, 100, CGRectGetWidth(self.view.frame)*5/6, CGRectGetWidth(self.view.frame)*5/6)
        qrView.frame = rect
        self.view.addSubview(qrView)
        
        qrView.backgroundColor = UIColor.whiteColor()
        qrView.layer.shadowOffset = CGSizeMake(0, 2);
        qrView.layer.shadowRadius = 2;
        qrView.layer.shadowColor = UIColor.blackColor().CGColor
        qrView.layer.shadowOpacity = 0.5;
        
        qrImgView.bounds = CGRectMake(0, 0, CGRectGetWidth(qrView.frame)-12, CGRectGetWidth(qrView.frame)-12)
        qrImgView.center = CGPointMake(CGRectGetWidth(qrView.frame)/2, CGRectGetHeight(qrView.frame)/2);
        qrView .addSubview(qrImgView)
        
        
        
        //条形码
        tView.frame = CGRectMake( (CGRectGetWidth(self.view.frame)-CGRectGetWidth(self.view.frame)*5/6)/2,
            CGRectGetMaxY(rect)+20,
            CGRectGetWidth(self.view.frame)*5/6,
            CGRectGetWidth(self.view.frame)*5/6*0.5)
        self.view .addSubview(tView)
        tView.layer.shadowOffset = CGSizeMake(0, 2);
        tView.layer.shadowRadius = 2;
        tView.layer.shadowColor = UIColor.blackColor().CGColor
        tView.layer.shadowOpacity = 0.5;
        
        
        tImgView.bounds = CGRectMake(0, 0, CGRectGetWidth(tView.frame)-12, CGRectGetHeight(tView.frame)-12);
        tImgView.center = CGPointMake(CGRectGetWidth(tView.frame)/2, CGRectGetHeight(tView.frame)/2);
        tView .addSubview(tImgView)
        
    }
    
    func createQR1()
    {
        // qrView.hidden = false
        // tView.hidden = true
        let qrImg = LBXScanWrapper.createCode("CIQRCodeGenerator",codeString:"lbxia20091227@foxmail.com", size: qrImgView.bounds.size, qrColor: UIColor.blackColor(), bkColor: UIColor.whiteColor())
        
        let logoImg = UIImage(named: "logo.JPG")
        
        qrImgView.image = LBXScanWrapper.addImageLogo(qrImg!, logoImg: logoImg!, logoSize: CGSizeMake(30, 30))
        print("fuck you ！！！！！！！")
 
    }
    
    func createCode128()
    {
        
        let qrImg = LBXScanWrapper.createCode128("005103906002", size: qrImgView.bounds.size, qrColor: UIColor.blackColor(), bkColor: UIColor.whiteColor())
        
        print("fuck you ！！！！！！！")
        
        tImgView.image = qrImg
        
    }
    
    deinit
    {
        print("MyCodeViewController deinit")
    }
    
    
    
    
    func handleReceivedDataWithNotification(notification: NSNotification){
        
        let data = notification.userInfo!["wifiInfo"] as! NSData
        
        
        // take data out data variable and connect to the wifi with it...
        let wifiData = NSKeyedUnarchiver.unarchiveObjectWithData(data) as! Dictionary<String, String>
        print(wifiData["ssid"])
        print(wifiData["password"])
        
    }
    
} */
