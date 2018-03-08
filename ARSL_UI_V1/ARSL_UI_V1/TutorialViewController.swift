//
//  TutorialViewController.swift
//  ARSL_UI_V1
//
//  Created by jc on 3/5/18.
//  Copyright © 2018 jc. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController {

    let TutorialPages = ["Tutorial1.png","Tutorial2.png","Tutorial3.png","Tutorial4.png","Tutorial5.png"]
    var swipeIndex = 0 //starting swipe index

    
    //total of 5 tutorial pages
    
    @IBOutlet weak var TutorialImages: UIImageView!
    
    @IBOutlet weak var testbutton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        let OutImage: UIImage = UIImage(named: TutorialPages[swipeIndex])!
        self.TutorialImages.image = OutImage
       
    }
    
    func respondToSwipeGesture(gesture: UIGestureRecognizer) {
        
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            
            switch swipeGesture.direction {
            case UISwipeGestureRecognizerDirection.right:
                print("Swiped right")
            case UISwipeGestureRecognizerDirection.left:
                print("Swiped left")
            default:
                break
            }
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

    @IBAction func SwipeRight(_ sender: UISwipeGestureRecognizer) {
        print("swiped right")
        if swipeIndex > 0 {
        swipeIndex -= 1
        //let OutImage: UIImage = UIImage(named: TutorialPages[swipeIndex])!
        //self.TutorialImages.image = OutImage
        self.viewDidLoad()
        }
    }
    @IBAction func SwipeLeft(_ sender: UISwipeGestureRecognizer) {
        print("swiped left")
        if swipeIndex < TutorialPages.count-1{
        swipeIndex += 1
        
        self.viewDidLoad()
        }
        
    }
  
    @IBAction func buttontest(_ sender: Any) {
         print("pressed")
    }
}
