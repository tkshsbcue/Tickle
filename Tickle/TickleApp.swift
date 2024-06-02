//
//  TickleApp.swift
//  Tickle
//
//  Created by Kumar Tanay on 28/05/24.
//

import SwiftUI
import Firebase
import FirebaseDatabaseInternal

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        FirebaseApp.configure()
        Database.database().isPersistenceEnabled = true
        return true
    }
}

@main
struct TickleApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @StateObject var viewModel = MainViewModel()

    var body: some Scene {
        WindowGroup {
            if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
                TabView{
                    ToDoListView().tabItem{
                        Label("Home",systemImage: "house")
                    }
                    Register().tabItem{
                        Label("Profile",systemImage: "person.circle")
                    }
                }
            } else {
                LoginView()
            }
        }
    }
}
