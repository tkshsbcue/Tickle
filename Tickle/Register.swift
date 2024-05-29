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
            }
        }
    }
}

#Preview {
    Register()
}
