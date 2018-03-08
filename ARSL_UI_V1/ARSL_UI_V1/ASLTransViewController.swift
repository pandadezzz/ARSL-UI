//
//  ASLTransViewController.swift
//  ARSL_UI_V1
//
//  Created by jc on 2/26/18.
//  Copyright © 2018 jc. All rights reserved.
//

import UIKit
import AVFoundation

class ASLTransViewController: UIViewController {

    @IBOutlet weak var cameraView: UIView!
    
    //MARK: variables
    var session: AVCaptureSession?
    var videoPreviewLayer: AVCaptureVideoPreviewLayer?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        session = AVCaptureSession()
        session!.sessionPreset = AVCaptureSession.Preset.photo
        
        
        
        

        // Do any additional setup after loading the view.
    }
    
   // override func viewWillAppear(_ animated: Bool) {
       // super.viewWillAppear(<#T##animated: Bool##Bool#>)
   // }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
