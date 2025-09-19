//
//  NoItemsView.swift
//  ToDoList
//
//  Created by Shoaib Akhtar on 19/09/25.
//

import SwiftUI

struct NoItemsView: View {
    
    
    var body: some View {
        ScrollView{
            VStack(spacing: 10){
                Text("There are no items!")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("Are you a productive person? I think you should click the add button and add some tasks.")
                NavigationLink(destination: AddView()) {
                    Text("Add something")
                        .foregroundStyle(Color.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(Color.blue)
                        .cornerRadius(20)
                }
            }
            .padding(40)
            .multilineTextAlignment(.center)
            
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
    }
    
    
    
}

#Preview {
    NavigationView{
        NoItemsView()
        
        .navigationTitle(Text("No Items"))
    }
    
    
}
