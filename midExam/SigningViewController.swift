//
//  SigningViewController.swift
//  midExam
//
//  Created by Leo on 6/17/16.
//  Copyright © 2016 Leo. All rights reserved.
//

import UIKit

class SigningViewController: UIViewController , UITableViewDataSource {

    @IBOutlet weak var enterNameField: UITextField!
    @IBOutlet weak var enterButton: UIButton!
    
    @IBOutlet weak var nameTableView: UITableView!

    var nameList: [String] = [String]() {
        didSet {
            self.nameTableView.reloadData()
            nameTableView.dataSource = self
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTableView.backgroundColor = UIColor.yellowColor()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func enteringName(sender: AnyObject) {
        let signingName = enterNameField.text
        
        
        guard signingName != "" else {
            let alert = UIAlertController(title: "Please sign your name", message: nil, preferredStyle: .Alert)
            alert.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
            return
        }
        
        if nameList.count < 3 {
            nameList.append(signingName!)
            enterNameField.text = ""
        } else {
            let alert = UIAlertController(title: "Only 3, you are late!", message: nil, preferredStyle: .Alert)
            alert.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
            
        }
        
        
    }
    
    // MARK: TableView
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
   
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameList.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("SignCell", forIndexPath: indexPath)
        let signName = nameList[indexPath.row]
        cell.backgroundColor = UIColor.yellowColor()
        cell.textLabel?.text = ("\(signName)")
        return cell
    }
    
}