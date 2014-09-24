//
//  ViewController.swift
//  onetwothree
//
//  Created by student on 9/12/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    

    @IBOutlet weak var lableone: UILabel!
    
    @IBOutlet weak var labletwo: UILabel!
    
    @IBOutlet weak var lablethree: UILabel!
    
    var x=0
    var y=0
    var z=0
    
    @IBAction func one(sender: AnyObject) {
        x+=1
        lableone.text = "\(x)"
    }
    
    @IBAction func two(sender: AnyObject) {
        y+=1
        labletwo.text = "\(y)"
    }

    @IBAction func three(sender: AnyObject) {
        z+=1
        lablethree.text = "\(z)"
    }
    
    @IBAction func reset(sender: AnyObject) {
         x=0
         y=0
         z=0
        lableone.text = "\(x)"
        labletwo.text = "\(y)"
        lablethree.text = "\(z)"    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

