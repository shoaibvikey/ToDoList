//
//  ExtractedView.swift
//  ToDoList
//
//  Created by Shoaib Akhtar on 04/09/25.
//


import SwiftUI

struct ListRowView: View {
    
    let item : ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isDone ? "checkmark.circle" : "circle")
                .foregroundStyle(item.isDone ? Color.green : Color.red)
            Text(item.text)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical,8)
    }
}
#Preview {
    var item1: ItemModel = ItemModel(text: "Test line", isDone: true)
    ListRowView(item: item1 )
}
