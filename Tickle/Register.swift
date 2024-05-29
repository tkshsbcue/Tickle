//
//  Register.swift
//  Tickle
//
//  Created by Kumar Tanay on 28/05/24.
//

import SwiftUI

struct Register: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    var body: some View {
        NavigationView{
            VStack{
                Form{
                    TextField("Name",text:$name)
                    TextField("Email",text:$email)
                    SecureField("Password",text:$password)
                    
                }
                Button{
                    
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
