//
//  globalFunctions.swift
//  MusicPlayer
//
//  Created by Ulysses Castillo on 10/23/14.
//  Copyright (c) 2014 UACA. All rights reserved.
//

import Foundation
import MediaPlayer

func playNow() {
    if MPMediaQuery.songsQuery().items.count != 0 {
        let songs = MPMediaQuery.songsQuery().items
        let mediaCollection = MPMediaItemCollection(items: songs)
        let playerMP = MPMusicPlayerController.iPodMusicPlayer()
        playerMP.stop()
        playerMP.setQueueWithItemCollection(mediaCollection)
//        if currentSong != nil {
            playerMP.nowPlayingItem = currentSong as? MPMediaItem
//        }
        playerMP.play()
        println(currentSong)
    }
}

