//
//  FirstViewController.swift
//  CapitalOne Onboarding
//
//  Created by Dittman, Clayton on 6/7/17.
//  Copyright © 2017 Herro. All rights reserved.
//

import UIKit

class InternViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        requestData()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func requestData() {
        print("calling data")
        let urlPath = "https://c1hackathonapp.firebaseio.com/announcements.json"
        let url = NSURL(string: urlPath)
        let config = URLSessionConfiguration.default
        let session = URLSession(configuration: config)
        
        let task = session.dataTask(with: url! as URL, completionHandler: {(data, response, error) -> Void in
            //sleep(2) //fake wait to simulate a laggy server
            let status = (response as? HTTPURLResponse)?.statusCode
            print("Response:" +(response))
            if(error != nil) {
                print("Request error: "+(error?.localizedDescription)! as String)
                //handle lack of server connection
            }
            else {
                print(data)
                let jsonResult = try? JSONSerialization.jsonObject(with: data!, options: []) as! [String:Any]
                print(jsonResult)
            }
        })
        task.resume()
    }

    
}

