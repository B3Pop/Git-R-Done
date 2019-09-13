//
//  Category.swift
//  Git-R-Done
//
//  Created by Brian Gass on 9/13/19.
//  Copyright © 2019 Brian Gass. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name: String = ""
    let items = List<Item>()
}
