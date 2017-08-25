//
//  SecondViewController.swift
//  recime
//
//  Created by Yue Li on 24/8/17.
//  Copyright © 2017 Yue Li. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!

    var tabledata:[String] = ["EGG",
                              "TOMATOES",
                              "CUCAMBER",
                              "MILK",
                              "PEACH",
                              "PEACH",
                              "PEACH",
                              "PEACH",
                              "PEACH",
                              "PEACH",
                              "PEACH",
                              "PEACH",
                              "PEACH",
                              "PEAR"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.delegate = self
        tableView.dataSource = self
        tableView.estimatedRowHeight = 44
        tableView.rowHeight = UITableViewAutomaticDimension
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tabledata.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        }
        cell!.textLabel?.text = tabledata[indexPath.row]
        cell!.textLabel?.numberOfLines = 0
        return cell!
    }
}
