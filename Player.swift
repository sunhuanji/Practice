
//
//  Player.swift
//  Practice
//
//  Created by Sun Huanji on 16/9/8.
//  Copyright © 2016年 Sun Huanji. All rights reserved.
//
import Foundation

struct Player {
    var name: String
    var lyrics: String
    var link: String
    
    init(name: String, lyrics: String, link: String) {
        self.name = name
        self.lyrics = lyrics
        self.link = link
    }
}