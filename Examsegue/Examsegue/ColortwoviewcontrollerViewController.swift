//
//  ColortwoviewcontrollerViewController.swift
//  Examsegue
//
//  Created by Student on 10/17/14.
//  Copyright (c) 2014 Student. All rights reserved.
//

import UIKit
protocol ColortwoviewcontrollerViewControllerDalegate{
    func myVCDidFinish
        (controller :ColortwoviewcontrollerViewController,text:String)
}
class ColortwoviewcontrollerViewController: UIViewController {

    var delegate:ColortwoviewcontrollerViewControllerDalegate? = nil
    
    var colorString = ""
    
    @IBOutlet var colorLabel: UILabel!

    @IBAction func colorSelectionButton(sender: UIButton) {
        colorLabel.text = sender.titleLabel!.text!
    }
    
    
    
    @IBAction func saveColor(sender: UIBarButtonItem) {
        if (delegate != nil){
            delegate!.myVCDidFinish(self, text: colorLabel!.text)
        }
    }
    
    override func viewDidLoad()  {
        super.viewDidLoad()
        colorLabel.text = colorString

        // Do any additional setup after loading the view.
    }



    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
