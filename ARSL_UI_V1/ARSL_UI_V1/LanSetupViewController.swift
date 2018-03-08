//
//  LanSetupViewController.swift
//  ARSL_UI_V1
//
//  Created by jc on 3/6/18.
//  Copyright © 2018 jc. All rights reserved.
//

import UIKit

class LanSetupViewController: UIViewController {

    // need to get what is the default user setting if any
    //These are the list of aviable settings
    var UserLanguage = ["Voice", "ASL", "CSL"]
    
    @IBOutlet weak var VoiceBtn: UIButton!
    @IBOutlet weak var ASLBtn: UIButton!
    @IBOutlet weak var CSLBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // need to display what's the current setting
        //assume default is Voice just for testing
        setButtonImage(setting: "Voice")
    
        // Do any additional setup after loading the view.
    }
    
    func setButtonImage(setting: String) {
        
        //reset all to default first
        VoiceBtn.setImage(UIImage(named: "LanVoice.png")!, for: UIControlState.normal)
        ASLBtn.setImage(UIImage(named: "LanASL.png")!, for: UIControlState.normal)
        CSLBtn.setImage(UIImage(named: "LanCSL.png")!, for: UIControlState.normal)
        
        //now set the button pressed image to checked
        switch setting{
        case "Voice":
            VoiceBtn.setImage(UIImage(named: "LanVoiceChecked.png")!, for: UIControlState.normal)
        //# need to update setting variable
        case "ASL":
            ASLBtn.setImage(UIImage(named: "LanASLChecked.png")!, for: UIControlState.normal)
        //# need to update setting variable
        case "CSL":
            CSLBtn.setImage(UIImage(named: "LanCSLChecked.png")!, for: UIControlState.normal)
        //# need to update setting variable
        default: break
        }
    
        
    }

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

    // MARK: Actions
    
    @IBAction func VoicePressed(_ sender: Any) {
        setButtonImage(setting: "Voice")
    }
    @IBAction func ASLPressed(_ sender: Any) {
         setButtonImage(setting: "ASL")
    }
    @IBAction func CSLPressed(_ sender: Any) {
         setButtonImage(setting: "CSL")
    }
    
}
