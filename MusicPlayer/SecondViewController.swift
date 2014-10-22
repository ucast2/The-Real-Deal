//
//  SecondViewController.swift
//  MusicPlayer
//
//  Created by Ulysses Castillo on 10/21/14.
//  Copyright (c) 2014 UACA. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var player:AVAudioPlayer = AVAudioPlayer()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var fileLoc = NSString(string: NSBundle.mainBundle().pathForResource("04 Twelve Feet Under", ofType: "mp3")!).stringByAddingPercentEscapesUsingEncoding(NSUTF8StringEncoding)!
        
        var error : NSError? = nil
        player = AVAudioPlayer(contentsOfURL: NSURL(string: fileLoc), error: &error)
        
        
        player.play()
        player.voulme = volumeSlider.value

        
        
    }
    @IBOutlet var volumeSlider: UISlider!

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

