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
                Image(systemName: "target")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .foregroundStyle(Color.gray)
                Text("There are no items!")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color.gray)
                Text("Are you a productive person? I think you should click the add button and add some tasks.")
                    .font(.caption)
                    .foregroundStyle(Color.gray)
//                NavigationLink(destination: AddView()) {
//                    Text("Add something")
//                        .foregroundStyle(Color.white)
//                        .frame(maxWidth: .infinity)
//                        .frame(height: 50)
//                        .background(Color.gray)
//                        .cornerRadius(20)
//                }
                
            }
            .padding(40)
            .padding(.top, 100)
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
