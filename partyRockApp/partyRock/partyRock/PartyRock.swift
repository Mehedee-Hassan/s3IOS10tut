//
//  PartyRock.swift
//  partyRock
//
//  Created by Mehedee Hassan on 1/30/17.
//  Copyright © 2017 Mehedee Hassan. All rights reserved.
//

import Foundation


class PartyRock{
    
    
    private var     _imageUrl: String
    private var     _videoUrl: String
    private var     _videoTitle: String
    
    
    
    var imageURL :String {
        return _imageUrl
    }
    
    var videoURL :String {
        return _videoUrl
    }
    
    var videoTitle :String {
        return _videoTitle
    }
    
    
    init (imageURL : String ,videoUrl :String ,videoTitle : String){
        
        _imageUrl = imageURL
        _videoUrl = videoUrl
        _videoTitle = videoTitle
        
        
    }
    
}
