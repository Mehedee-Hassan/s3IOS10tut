//
//  Item+CoreDataClass.swift
//  DreamLister
//
//  Created by Mehedee Hassan on 1/30/17.
//  Copyright © 2017 Mehedee Hassan. All rights reserved.
//

import Foundation
import CoreData


public class Item: NSManagedObject {

    public override func awakeFromInsert() {
        super.awakeFromInsert()
        
        self.created = NSDate()
    }
    
}
