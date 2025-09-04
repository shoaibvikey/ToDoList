//
//  ItemModel.swift
//  ToDoList
//
//  Created by Shoaib Akhtar on 04/09/25.
//

import Foundation

struct ItemModel: Identifiable {
    var id: String = UUID().uuidString
    var text: String
    var isDone: Bool 
}
