//
//  FirstViewController.swift
//  CapitalOne Onboarding
//
//  Created by Dittman, Clayton on 6/7/17.
//  Copyright © 2017 Herro. All rights reserved.
//

import UIKit
import Firebase


class InternViewController: UITableViewController {
    let ref = Database.database().reference(withPath: "profiles")

    var items: [GroceryItem] = []
    var user: User!
    var userCountBarButtonItem: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addButtonDidTouch(_ sender: AnyObject) {
        let alert = UIAlertController(title: "Intern",
                                      message: "Add an Item",
                                      preferredStyle: .alert)
        
        let saveAction = UIAlertAction(title: "Save",
                                       style: .default) { action in
                                        let textField = alert.textFields![0]
                                        let groceryItem = (name: textField.text!,
                                                                 firstname: self.user.firstname,
                                                                 lastname: self.user.lastname,
                                                                 leader: self.user.leader,
                                                                 school: self.user.school,
                                                                 state: self.user.state,
                                                                 userid: self.user.userid,
                                                                 work_location: self.user.work_location)
                                        self.user.append(groceryItem)
                                        self.tableView.reloadData()
                                        }
    }
    
}

