//
//  ViewController.swift
//  sound
//
//  Created by Student on 11/21/14.
//  Copyright (c) 2014 Student. All rights reserved.
//

import UIKit
import CoreMotion
import AVFoundation

let motionManager = CMMotionManager()
let motionQueue = NSOperationQueue()



    


class ViewController: UIViewController {
    var audio1 = AVAudioPlayer()
var audio2 = AVAudioPlayer()
var audio3 = AVAudioPlayer()
    
    
    @IBAction func Play(sender: AnyObject) {
        coreAudio()
        audio1.play()
    }
    
  
    
    @IBAction func stop(sender: AnyObject) {
        coreAudio()
        audio1.stop()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func coreAudio(){
    var url1 = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("sound1", ofType: "mp3")!)
        
        var error : NSError?
         audio1 = AVAudioPlayer(contentsOfURL: url1, error: &error)
         audio1.prepareToPlay()
        
    }

    func coreMotion(){
        motionManager.stopDeviceMotionUpdates
    }

}


