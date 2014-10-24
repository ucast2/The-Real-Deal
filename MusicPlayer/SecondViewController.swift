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
    

    @IBOutlet var albumCover: UIImageView!
    
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

//        if MPMediaQuery.songsQuery().items.count != 0 {
//            let songs = MPMediaQuery.songsQuery().items
//            let mediaCollection = MPMediaItemCollection(items: songs)
//            let playerMP = MPMusicPlayerController.iPodMusicPlayer()
//            playerMP.setQueueWithItemCollection(mediaCollection)
////            playerMP.setQueueWithQuery(<#query: MPMediaQuery!#>)
//            playerMP.play()
//        }
        
//        if MPMediaQuery.songsQuery().items.count != 0 {
//            var controller = MPMusicPlayerController.iPodMusicPlayer()
//            let songs = MPMediaQuery.songsQuery().items
//            var collection = MPMediaItemCollection(items: songs)
//            var item: MPMediaItemCollection = currentSong
//            controller.setQ
//            controller.nowPlayingItem = item as? MPMediaItem
//            controller.play()
//        
//        }
    }
   
    
//    MPMusicPlayerController *controller = [MPMusicPlayerController iPodMusicPlayer];
//    
//    MPMediaItemCollection *collection = [[MPMediaItemCollection alloc] initWithItems:arrayOfMediaItems];
//    MPMediaItem *item = [collection representativeItem];
//    
//    [controller setQueueWithItemCollection:collection];
//    [controller setNowPlayingItem:item];
//    
//    [controller prepareToPlay];
//    [controller play];

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

