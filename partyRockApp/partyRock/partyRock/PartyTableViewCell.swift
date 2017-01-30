//
//  PartyTableViewCell.swift
//  partyRock
//
//  Created by Mehedee Hassan on 1/30/17.
//  Copyright © 2017 Mehedee Hassan. All rights reserved.
//

import UIKit

class PartyTableViewCell: UITableViewCell {

    @IBOutlet weak var PartyImage: UIImageView!
    @IBOutlet weak var VideoTitle: UILabel!

    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

 
    func updateUI(partyRock : PartyRock){
        VideoTitle.text = partyRock.videoTitle
        
        
        let imageUrl = URL(string: partyRock.imageURL)
        
        DispatchQueue.global().async{
            
            
            do{
            
                let imageData = try Data(contentsOf:imageUrl!)
                
                DispatchQueue.global().async {
                    self.PartyImage.image =  UIImage(data: imageData)
                }
                
                
            }catch {
            
            }
        }
        
        
    }
    
    
    
}
