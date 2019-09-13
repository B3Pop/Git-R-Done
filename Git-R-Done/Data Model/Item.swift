//
//  Item.swift
//  Git-R-Done
//
//  Created by Brian Gass on 9/13/19.
//  Copyright © 2019 Brian Gass. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object {
    @objc dynamic var title: String = ""
    @objc dynamic var done: Bool = false
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}
