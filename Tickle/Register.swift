//
//  Register.swift
//  Tickle
//
//  Created by Kumar Tanay on 28/05/24.
//

import SwiftUI

struct Register: View {
    @StateObject var viewModel = RegisterViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                Form{
                    TextField("Name",text:$viewModel.name)
                    TextField("Email",text:$viewModel.email)
                    SecureField("Password",text:$viewModel.password )
                    
                }
                Button{
                    viewModel.register()
                }label:{
//                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    Text("Register")
                }
            }
        }
    }
}

#Preview {
    Register()
}
