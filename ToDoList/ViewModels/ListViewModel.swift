//
//  ListViewModel.swift
//  ToDoList
//
//  Created by Shoaib Akhtar on 04/09/25.
//

import Foundation

class ListViewModel : ObservableObject{ 
    @Published var items: [ItemModel] = []
    
    init() {
       getItems()
    }
     func getItems(){
         let newItems = [
            ItemModel(text: "This is first item title.", isDone: false),
            ItemModel(text: "This is second item title.", isDone: true),
            ItemModel(text: "This is third item title.", isDone: false),
            ItemModel(text: "This is fourth item title.", isDone: true)
         ]
         items.append(contentsOf: newItems)
    }
    
    func deleteItem ( indexSet : IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem (from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(tittle:String){
        let newItem : ItemModel = ItemModel(text: tittle, isDone: false)
        items.append(newItem)
    }
    
    func updateItem(item:ItemModel){
        if let index = items.firstIndex(where: { $0.id == item.id }){
            items[index] = item.updateCompletion() 
        }
    }
    
    
}
