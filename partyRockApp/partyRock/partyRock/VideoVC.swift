//
//  VideoVC.swift
//  partyRock
//
//  Created by Mehedee Hassan on 1/30/17.
//  Copyright © 2017 Mehedee Hassan. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {

    
    @IBOutlet weak var webView : UIWebView!
    @IBOutlet weak var songTitle: UILabel!
    
    
    private var _partyRock: PartyRock!
    
    
    var partyRock : PartyRock {
        
        get{
          return _partyRock
        }
        set{
          _partyRock = newValue
        }
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        songTitle.text = _partyRock.videoTitle
        webView.loadHTMLString( _partyRock.videoURL, baseURL: nil)
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
