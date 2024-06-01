//
//  LoginViewModel.swift
//  Tickle
//
//  Created by Kumar Tanay on 29/05/24.
//

import Foundation
class LoginViewModel:ObservableObject{
    @Published var email = ""
    @Published var password = ""
    init(){}
    
    func login(){
        guard !email.isEmpty, !password.isEmpty else{
             return
        }
        print("Hello there")
    }
    func validate(){}

    
}
