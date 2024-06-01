//
//  LoginViewModel.swift
//  Tickle
//
//  Created by Kumar Tanay on 29/05/24.
//
import FirebaseAuth
import Foundation
import Firebase
class LoginViewModel:ObservableObject{
    @Published var email = ""
    @Published var password = ""
    @Published var errormsg = ""
    init(){}
    
    func login(){
        Auth.auth().signIn(withEmail:email,password: password)
        
    }
    func validate(){}

    
}
