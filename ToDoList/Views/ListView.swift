//
//  ListView.swift
//  ToDoList
//
//  Created by Shoaib Akhtar on 04/09/25.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var listViewModel : ListViewModel
    var body: some View {
        List{
            ForEach(listViewModel.items) { item in
                ListRowView(item: item)
                    .onTapGesture {
                        withAnimation(.linear){
                            listViewModel.updateItem(item: item)
                        }
                    }
            }
            .onDelete(perform: listViewModel.deleteItem)
            .onMove(perform: listViewModel.moveItem)
            
            
            
        }
        .listStyle(PlainListStyle())
        .navigationBarTitle("ToDo Items 📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink("Add", destination: AddView())
        )
    }
    
    
        
}

#Preview {
    NavigationView {
        ListView()
    }
    .environmentObject(ListViewModel())
}


