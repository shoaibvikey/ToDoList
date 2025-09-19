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
    
    @State var alertTitle : String = ""
    @State var showAlert : Bool = false
    
    var body: some View {
        ScrollView{
            VStack {
                TextField("Enter task here", text: $taskText)
                    .padding(10)
                    //.frame(width: .infinity, height: 50)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                
                
                
                    Button(action: saveButtonPressed , label: {
                        Text("Add Task".uppercased())
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(height: 50)
                            .frame(maxWidth: .infinity)
                            .background(
                                textIsAppropiate() ? Color.blue : Color.gray.opacity(0.5)
                            )
                            .cornerRadius(10)
                    })
                

            }
            .padding()
            
        }
        .navigationTitle(Text("Add new task 🎯"))
        .alert(isPresented: $showAlert, content: getAlert)
    }
    func saveButtonPressed(){
        if textIsAppropiate(){
            listViewModel.addItem(tittle: taskText)
            presentationMode.wrappedValue.dismiss()
        }
    }
    
    func textIsAppropiate() -> Bool {
        if taskText.count < 3 {
            alertTitle = "Your new task must be 3 character long."
            showAlert.toggle()
            return false;
        }
        return true;
    }
    
    func getAlert() -> Alert {
        return Alert(title: Text(alertTitle))
    }
    
}

#Preview {
    NavigationView{
        AddView()
    }
    .environmentObject(ListViewModel())
    
}
