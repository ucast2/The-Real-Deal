//
//  SecondViewController.swift
//  MusicPlayer
//
//  Created by Ulysses Castillo on 10/21/14.
//  Copyright (c) 2014 UACA. All rights reserved.
//

import UIKit
import MediaPlayer




class SecondViewController: UIViewController {
    
    
    @IBAction func playButtonPressed(sender: AnyObject) {
        playerMP.play()
    }

    @IBAction func pauseButtonPressed(sender: AnyObject) {
        playerMP.pause()
    }

    @IBAction func nextButtonPressed(sender: AnyObject) {
        playerMP.skipToNextItem()
    }
    
    @IBOutlet weak var artworkImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
   
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

