//
//  ViewController.swift
//  Examsegue
//
//  Created by Student on 10/17/14.
//  Copyright (c) 2014 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController,ColortwoviewcontrollerViewControllerDalegate {
    
    @IBOutlet weak var Colorlabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func myVCDidFinish(controller: ColortwoviewcontrollerViewController, text: String)
        { Colorlabel.text = "Co: " + text
            controller.navigationController?.popViewControllerAnimated(true)
    
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!){
        if segue.identifier == "mySegue"{
            let vc = segue.destinationViewController as ColortwoviewcontrollerViewController
            vc.colorString = Colorlabel.text!
            vc.delegate = self
        
        }
    }
 
    


}

