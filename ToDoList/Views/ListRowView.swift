//
//  ExtractedView.swift
//  ToDoList
//
//  Created by Shoaib Akhtar on 04/09/25.
//


import SwiftUI

struct ListRowView: View {
    
    let title : String
    
    var body: some View {
        HStack {
            Image(systemName:"checkmark.circle")
            Text(title)
            Spacer()
        }
    }
}
#Preview {
        ListRowView(title: "This is the test title")
}
