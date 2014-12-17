//
//  ViewController.swift
//  Fishanimation
//
//  Created by Student on 11/7/14.
//  Copyright (c) 2014 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
     
        
    }

    @IBAction func animateButtonPressed(sender: AnyObject) {
        for loopNumber in 0...10 {

           
            let duration : NSTimeInterval = 1.0
            let delay =  NSTimeInterval( ((Int(rand()) %  900)+100.0) / 1000.0)
            let options = UIViewAnimationOptions.CurveLinear
            let size : CGFloat = CGFloat( Int(rand()) %  40 + 20.0)
            let yPosition : CGFloat = CGFloat( Int(rand()) %  200 + 20.0)
            let fish = UIImageView()
            
            fish.image = UIImage(named: "plane.png")
            fish.frame = CGRectMake(-100, yPosition, size, size)
            self.view.addSubview(fish)
            
          
            UIView.animateWithDuration(duration, delay: delay, options: options, animations: {
                
              
               fish.frame = CGRectMake(320, yPosition, size, size)
                
                }, completion: { animationFinished in
                    
               
                    fish.removeFromSuperview()
                    
                })
        }
    }
        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}



