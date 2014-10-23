//
//  FirstViewController.swift
//  MusicPlayer
//
//  Created by Ulysses Castillo & Francisco Ramirez on 10/21/14.
//  Copyright (c) 2014 IMI_Apps. All rights reserved.
//

import UIKit
import MediaPlayer


class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return 67
    
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
        var cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell?")
        cell.textLabel.text = "Hello Universe"
        return cell
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}