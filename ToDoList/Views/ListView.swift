//
//  ListView.swift
//  ToDoList
//
//  Created by Shoaib Akhtar on 04/09/25.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [String] = [
        "This is first item title.",
        "This is second item title.",
        "This is third item title.",
        "This is fourth item title."
    ]
    
    var body: some View {
        List{
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
            }
            
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
}


