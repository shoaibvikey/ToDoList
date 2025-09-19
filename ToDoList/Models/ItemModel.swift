//
//  ItemModel.swift
//  ToDoList
//
//  Created by Shoaib Akhtar on 04/09/25.
//

import Foundation

struct ItemModel: Identifiable,Codable {
    var id: String
    var text: String
    var isDone: Bool
    
    init(id: String  = UUID().uuidString , text: String, isDone: Bool) {
        self.id = id
        self.text = text
        self.isDone = isDone
    }
    
    func updateCompletion() -> ItemModel{
        return ItemModel(id: id, text: text, isDone: !isDone) 
    }
    
}
