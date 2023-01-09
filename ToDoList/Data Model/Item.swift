//
//  Item.swift
//  ToDoList
//
//  Created by Minh Tan Vu on 22/12/2022.
//

import Foundation
import RealmSwift

class Item: Object {
    @Persisted var title : String = ""
    @Persisted var done : Bool = false
    @Persisted var dateCreated : Date?
    @Persisted var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}
