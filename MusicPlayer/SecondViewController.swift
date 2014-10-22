//
//  SecondViewController.swift
//  MusicPlayer
//
//  Created by Ulysses Castillo on 10/21/14.
//  Copyright (c) 2014 UACA. All rights reserved.
//

import UIKit
import MediaPlayer


var songs = MPMediaQuery.songsQuery().items as NSArray
class SecondViewController: UIViewController {
    
    
    
    @IBAction func Back(sender: AnyObject) {}
    @IBOutlet var volumeSlider: UISlider!
////////////////////////////////////// MPMEDIAQUERY+PLAYER \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mediaCollection = MPMediaItemCollection(items: songs)
        let playerMP = MPMusicPlayerController.iPodMusicPlayer()
        playerMP.setQueueWithItemCollection(mediaCollection)
        playerMP.play()
        
        println(songs[0])
        
    }
   

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

