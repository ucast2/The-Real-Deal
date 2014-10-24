//
//  FirstViewController.swift
//  MusicPlayer
//
//  Created by Ulysses Castillo & Francisco Ramirez on 10/21/14.
//  Copyright (c) 2014 IMI_Apps. All rights reserved.
//

import UIKit
import MediaPlayer

var numberOfSongs = 10
var songsArray = [AnyObject]()
var bpmArray = [AnyObject?]()

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    override func viewDidLoad() {
        super.viewDidLoad()

        if MPMediaQuery.songsQuery().items.count != 0 {
            let songs = MPMediaQuery.songsQuery().items
            let mediaCollection = MPMediaItemCollection(items: songs)
            let playerMP = MPMusicPlayerController.iPodMusicPlayer()
            playerMP.setQueueWithItemCollection(mediaCollection)
            playerMP.play()
            numberOfSongs = 0
            for song in songs {
                var songTitle: AnyObject! = song.valueForProperty(MPMediaItemPropertyTitle)
                var bpm: AnyObject! = song.valueForProperty(MPMediaItemPropertyBeatsPerMinute)
                numberOfSongs++
                songsArray.append(songTitle)
                bpmArray.append(bpm)
            }
            println(bpmArray)
            
            
            
//            self.currentSongname = currentItem.valueForProperty.MPMediaItemPropertyTitle
//            let MPMediaItemPropertyBeatsPerMinute: NSString!
            
            
//            NSLog(@"Logging items from a generic query...");
//            NSArray *itemsFromGenericQuery = [everything items];
//            for (MPMediaItem *song in itemsFromGenericQuery) {
//                NSString *songTitle = [song valueForProperty: MPMediaItemPropertyTitle];
//                NSLog (@"%@", songTitle);}
            
            
            
           
            
            


        }
      
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return numberOfSongs
    
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
         var cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell?")
        if songsArray.count != 0 {
            cell.textLabel.text = songsArray[indexPath.row] as? String
        } else {
            cell.textLabel.text = "Hello Universe"
        }
        return cell
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}