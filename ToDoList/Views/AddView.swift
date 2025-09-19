//
//  AddView.swift
//  ToDoList
//
//  Created by Shoaib Akhtar on 04/09/25.
//

import SwiftUI

struct AddView: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel : ListViewModel
    @State var taskText: String = ""
    
    var body: some View {
        ScrollView{
            VStack {
                TextField("Enter task here", text: $taskText)
                    .padding(10)
                    .frame(width: .infinity, height: 50)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                
                
                
                
                Button(action: saveButtonPressed , label: {
                    Text("Add Task".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(height: 50)
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                })

            }
            .padding()
            
        }
        .navigationTitle(Text("Add new task 🎯"))
    }
    func saveButtonPressed(){
        listViewModel.addItem(tittle: taskText)
        presentationMode.wrappedValue.dismiss()
    }
    
}

#Preview {
    NavigationView{
        AddView()
    }
    .environmentObject(ListViewModel())
    
}
