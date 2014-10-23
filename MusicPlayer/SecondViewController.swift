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
    
    
    
//    @IBAction func Back(sender: AnyObject) {}
//   @IBOutlet var volumeSlider: UISlider!
////////////////////////////////////// MPMEDIAQUERY+PLAYER \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if MPMediaQuery.songsQuery().items.count != 0 {
        let songs = MPMediaQuery.songsQuery().items
        let mediaCollection = MPMediaItemCollection(items: songs)
        let playerMP = MPMusicPlayerController.iPodMusicPlayer()
        playerMP.setQueueWithItemCollection(mediaCollection)
        playerMP.play()
        }
        
//        println(songs[0])
        
//        let MPMediaItemPropertyBeatsPerMinute: NSString!
    }
   

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

