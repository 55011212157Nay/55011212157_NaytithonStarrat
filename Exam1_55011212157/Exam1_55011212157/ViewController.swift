//
//  ViewController.swift
//  Exam1_55011212157
//
//  Created by Student on 12/17/14.
//  Copyright (c) 2014 Student. All rights reserved.
//

import UIKit
import CoreData



class ViewController: UIViewController,
UITableViewDataSource {
var items = [NSManagedObject]()
var amount = [NSManagedObject]()
var price = [NSManagedObject]()
    
    @IBOutlet var tableView: UITableView!
    @IBAction func additem(sender: AnyObject) {
        var alert = UIAlertController(title: "New Data",
            message: "Add a Data",
            preferredStyle: .Alert)
       

        
        let saveAction = UIAlertAction(title: "Save",
            style: .Default) { (action: UIAlertAction!) -> Void in
                
                let textField = alert.textFields![0] as UITextField
               self.saveName(textField.text)
                self.tableView.reloadData()
        }
        
        let cancelAction = UIAlertAction(title: "Cancel",
            style: .Default) { (action: UIAlertAction!) -> Void in
        }
        
        alert.addTextFieldWithConfigurationHandler {
            (textField: UITextField!) -> Void in
            textField.placeholder = "Name"
        }
  
        alert.addTextFieldWithConfigurationHandler {
            (textField: UITextField!) -> Void in
        textField.placeholder = "Amount"
        }
        
        alert.addTextFieldWithConfigurationHandler {
            (textField: UITextField!) -> Void in
              textField.placeholder = "Price"        }
   
        alert.addAction(saveAction)
        alert.addAction(cancelAction)
        
        presentViewController(alert,
            animated: true,
            completion: nil)
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell")
        as UITableViewCell
        
        let item=items[indexPath.row]
        cell.textLabel!.text = item.valueForKey("name") as String?
        
        return cell
    }
    func saveName(name: String) {

        let appDelegate =
        UIApplication.sharedApplication().delegate as AppDelegate
        
        let managedContext = appDelegate.managedObjectContext!
        
        
        let entity =  NSEntityDescription.entityForName("Stocks",
            inManagedObjectContext:
            managedContext)
        
        let item = NSManagedObject(entity: entity!,
            insertIntoManagedObjectContext:managedContext)
        
  
        item.setValue(name, forKey: "name")
        
        
        var error: NSError?
        if !managedContext.save(&error) {
            println("Could not save \(error), \(error?.userInfo)")
        }  
        
        items.append(item)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "\"Stocks\""
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        // Do any additional setup after loading the view, typically from a nib.
    }
/*
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        //1
        let appDelegate =
        UIApplication.sharedApplication().delegate as AppDelegate
        
        let managedContext = appDelegate.managedObjectContext!
        
        //2
        let fetchRequest = NSFetchRequest(entityName:"Stocks")
        
        //3
        var error: NSError?
        
        let fetchedResults =
        managedContext.executeFetchRequest(fetchRequest,
            error: &error) as [NSManagedObject]?
        
        if let results = fetchedResults {
            items = results
        } else {
            println("Could not fetch \(error), \(error!.userInfo)")
        }
    }
  */
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

