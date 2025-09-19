//
//  ListViewModel.swift
//  ToDoList
//
//  Created by Shoaib Akhtar on 04/09/25.
//

import Foundation

class ListViewModel : ObservableObject{ 
    @Published var items: [ItemModel] = []{
        didSet{
            saveItems()
        }
    }
    
    let itemKey : String = "items_list"
    
    init() {
       getItems()
    }
     func getItems(){
         guard let data = UserDefaults.standard.data(forKey: itemKey) else {
            return
        }
         guard let savedItems = try? JSONDecoder().decode([ItemModel].self, from: data) else {
            return
        }
         
         self.items=savedItems
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
    
    func saveItems(){
        if let encodedData = try? JSONEncoder().encode(items){
            UserDefaults.standard.set(encodedData, forKey: itemKey)
        }
    }
    
    
}
