//
//  ItemType+CoreDataProperties.swift
//  DreamLister
//
//  Created by Mehedee Hassan on 1/30/17.
//  Copyright © 2017 Mehedee Hassan. All rights reserved.
//

import Foundation
import CoreData


extension ItemType {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ItemType> {
        return NSFetchRequest<ItemType>(entityName: "ItemType");
    }

    @NSManaged public var type: String?
    @NSManaged public var toItem: Item?

}
