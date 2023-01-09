//
//  Category.swift
//  ToDoList
//
//  Created by Minh Tan Vu on 22/12/2022.
//

import Foundation
import RealmSwift

class Category: Object {
    
    @Persisted var name : String = ""
    @Persisted var items = List<Item>()
}
