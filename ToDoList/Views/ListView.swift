//
//  ListView.swift
//  ToDoList
//
//  Created by Shoaib Akhtar on 04/09/25.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [ItemModel] = [
        ItemModel(text: "This is first item title.", isDone: false),
        ItemModel(text: "This is second item title.", isDone: true),
        ItemModel(text: "This is third item title.", isDone: false),
        ItemModel(text: "This is fourth item title.", isDone: true),
    ]
    
    var body: some View {
        List{
            ForEach(items) { item in
                ListRowView(item: item)
            }
            .onDelete(perform: deleteItem)
            .onMove(perform: moveItem)
            
        }
        .listStyle(PlainListStyle())
        .navigationBarTitle("ToDo Items 📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink("Add", destination: AddView())
        )
    }
    
    func deleteItem ( indexSet : IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem (from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
        
}

#Preview {
    NavigationView {
        ListView()
    }
}


