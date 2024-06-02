//
//  TickleApp.swift
//  Tickle
//
//  Created by Kumar Tanay on 28/05/24.
//

import SwiftUI
import Firebase

@main
struct TickleApp: App {
    @StateObject var viewModel = MainViewModel()
    
    // Initialize Firebase in the initializer
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
                ToDoListView()
            } else {
                LoginView()
            }
        }
    }
}
