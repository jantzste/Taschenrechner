//
//  CameraScreenViewController.swift
//  Taschenrechner
//
//  Created by Stephen Japon Jantz on 10.09.17.
//  Copyright © 2017 Stephen Jantz. All rights reserved.
//

import UIKit
import AVFoundation

class CameraScreenViewController: UIViewController, AVCaptureMetadataOutputObjectsDelegate{
    
    var video = AVCaptureVideoPreviewLayer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        useCamera()
        
        //For testing after that can be deleted
        self.title = "Camerascreen"
        
    }

    
    let infoText: UILabel = {
        let infoLabl = UILabel()
        infoLabl.text = "Bitte scannen Sie den Barcode ab"
        infoLabl.textColor = UIColor.white
        infoLabl.font = infoLabl.font.withSize(20)
        infoLabl.frame = CGRect(x: 35, y: 100, width: 100, height: 100)
        //infoLabl.backgroundColor = UIColor.lightGray
        infoLabl.sizeToFit()
        return infoLabl
    }()
    
    let cameraImage: UIImageView = {
        let backroungImage = UIImageView()
        backroungImage.image = UIImage(named:"QRCode Rectangle")
        backroungImage.frame = CGRect(x: 40, y: 100, width: 300, height: 400)
        backroungImage.contentMode = UIViewContentMode.scaleAspectFit
        
        return backroungImage
        
    }()
    
    func captureOutput(_ captureOutput: AVCaptureOutput!, didOutputMetadataObjects metadataObjects: [Any]!, from connection: AVCaptureConnection!) {
        if metadataObjects != nil && metadataObjects.count != 0 {
            if let object = metadataObjects[0] as? AVMetadataMachineReadableCodeObject
            {
                if object.type == AVMetadataObjectTypeQRCode {
                    
                    let alert = UIAlertController(title: "QR Code", message: object.stringValue, preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "Retake", style: .default, handler: nil))
                    alert.addAction(UIAlertAction(title: "Copy", style: .default, handler: {(nil) in
                        UIPasteboard.general.string = object.stringValue
                    }))
                    present(alert, animated: true, completion: nil)
                }
            }
            
        }
    }
    
    func useCamera(){
        
        //creating session
        let session = AVCaptureSession()
        
        //Define caputre device
        let caputreDevice = AVCaptureDevice.defaultDevice(withMediaType: AVMediaTypeVideo)
        
        do{
            let input = try AVCaptureDeviceInput(device: caputreDevice)
            session.addInput(input)
        }
            
        catch {
            print("Error")
        }
        
        let output = AVCaptureMetadataOutput()
        session.addOutput(output)
        
        
        output.setMetadataObjectsDelegate(self, queue: DispatchQueue.main)
        output.metadataObjectTypes = [AVMetadataObjectTypeQRCode]
        video = AVCaptureVideoPreviewLayer(session: session)
        video.frame = view.layer.bounds
        view.layer.addSublayer(video)
        
        self.view.addSubview(infoText)
                
        self.view.addSubview(cameraImage)
        
        self.view.bringSubview(toFront: cameraImage)
        
        session.startRunning()
        
    }
    
}
