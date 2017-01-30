//
//  ViewController.swift
//  partyRock
//
//  Created by Mehedee Hassan on 1/28/17.
//  Copyright © 2017 Mehedee Hassan. All rights reserved.
//

import UIKit

class MainVC: UIViewController,UITableViewDelegate
                ,UITableViewDataSource{

    
    @IBOutlet weak var tableView : UITableView!
    
    var partyRocks = [PartyRock]();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let testVideoUrl = "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/czb_CZfWko8\" frameborder=\"0\" allowfullscreen></iframe>"
        
        let testImageUrl  = "http://bookingagentinfo.com/wp-content/uploads/2015/01/I-Prevail-Contact-Information.png"
        
        
        
        
        let videoUrl1 = "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/czb_CZfWko8\" frameborder=\"0\" allowfullscreen></iframe>"
        
        let videoUrl2 = "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/odNCtE-I8o4?list=RDczb_CZfWko8\" frameborder=\"0\" allowfullscreen></iframe>"
        
        let videoUrl3 = "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/tZzL4jI60p4?list=RDczb_CZfWko8\" frameborder=\"0\" allowfullscreen></iframe>"
        
        let videoUrl4 = "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/kMIofEihfk4?list=RDczb_CZfWko8\" frameborder=\"0\" allowfullscreen></iframe>"
        
        
        
        
        
        let party1 = PartyRock(imageURL: testImageUrl, videoUrl: videoUrl1, videoTitle: "Blank space")
        let party2 = PartyRock(imageURL: "http://i.ytimg.com/vi/odNCtE-I8o4/1.jpg", videoUrl: videoUrl2, videoTitle: "I Knew You Were Trouble")
        let party3 = PartyRock(imageURL: "https://i.ytimg.com/vi/tZzL4jI60p4/hqdefault.jpg", videoUrl: videoUrl3, videoTitle: "Scars")
        let party4 = PartyRock(imageURL: "http://www.fearlessrecords.com/uploads/video-images/icon.ip4.jpg", videoUrl: videoUrl4, videoTitle: "The Enemy")
        
        
        partyRocks.append(party1)
        partyRocks.append(party2)
        partyRocks.append(party3)
        partyRocks.append(party4)
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyTableViewCell", for: indexPath) as? PartyTableViewCell{
            
            let partyRock = partyRocks[indexPath.row]
            
            cell.updateUI(partyRock: partyRock)
            
            return cell
        }
        else{
            return UITableViewCell()
        }
    
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return partyRocks.count
        
    }
  
    
    

}

