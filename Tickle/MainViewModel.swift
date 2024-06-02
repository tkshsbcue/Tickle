//
//  MainViewModel.swift
//  Tickle
//
//  Created by Kumar Tanay on 29/05/24.
//

import Foundation
import FirebaseAuth
import Firebase



class MainViewModel:ObservableObject{
    @Published var currentUserId: String = ""
    private var handler:AuthStateDidChangeListenerHandle?
    
    init(){
        self.handler = Auth.auth().addStateDidChangeListener{[weak self] _, user in
            DispatchQueue.main.async{
                self?.currentUserId = user?.uid ?? ""
            }
        }
    }
    public var isSignedIn:Bool{
        return Auth.auth().currentUser != nil
        
    }
    
}
