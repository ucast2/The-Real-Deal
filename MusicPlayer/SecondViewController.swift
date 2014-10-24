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
    
    @IBOutlet var volumeSlider: UISlider!
    @IBAction func volumeSliderChanged(sender: AnyObject) {
    
//    playerMP.MPVolumeView
    
    }

    @IBOutlet var albumCover: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
   
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

