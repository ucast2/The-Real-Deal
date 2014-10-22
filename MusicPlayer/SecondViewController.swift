//
//  SecondViewController.swift
//  MusicPlayer
//
//  Created by Ulysses Castillo on 10/21/14.
//  Copyright (c) 2014 UACA. All rights reserved.
//

import UIKit
import AVFoundation
import MediaPlayer

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBAction func Back(sender: AnyObject) {

    }
    
    @IBOutlet var volumeSlider: UISlider!
    
    @IBAction func changeVolume(sender: AnyObject) {
        player.volume = volumeSlider.value
    
    
    }


    var player:AVAudioPlayer = AVAudioPlayer()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let songs = MPMediaQuery.songsQuery().items
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
        var fileLoc = NSString(string: NSBundle.mainBundle().pathForResource("04 Twelve Feet Under", ofType: "mp3")!).stringByAddingPercentEscapesUsingEncoding(NSUTF8StringEncoding)!
        
        var error : NSError? = nil
        player = AVAudioPlayer(contentsOfURL: NSURL(string: fileLoc), error: &error)
        
        volumeSlider.value = 1
        player.volume = 1
        player.play()
        
      
        
        
    }
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

