//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Shoaib Akhtar on 04/09/25.
//

import SwiftUI

@main
struct ToDoListApp: App {
    
   @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
        NavigationView {
            ListView()
            } 
        }
        .environmentObject(listViewModel)
    }
}
