//
//  ContentView.swift
//  Tickle
//
//  Created by Kumar Tanay on 28/05/24.

//            ZStack{
//                RoundedRectangle(cornerRadius:1).frame(width: 600,height:300).offset(y:-100).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
//
//                RoundedRectangle(cornerRadius: 1).offset(y:300).foregroundColor(.red)
//
//
//
//
//
//            }
//

import SwiftUI

struct LoginView: View {
    @State var viewModel = LoginViewModel()
    var body: some View {
        NavigationView{
            VStack{
                RoundedRectangle(cornerRadius:1).frame(width: 600,height:300).offset(y:-100).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Text("Free VBUCK").offset(y:-100).bold().foregroundColor(.green)
                ZStack{
 
                    Form{
                        if !viewModel.errormsg.isEmpty {
                            Text(viewModel.errormsg).foregroundColor(Color.red)
                        }
                        TextField("Name",text:$viewModel.email)
                        SecureField("Password",text:$viewModel.password)
                        NavigationLink(destination:Register()){
                            Text("New Here")
                        }
                    }.offset(y:-50).frame(height:300)
                     Button{
                         viewModel.login()
                    }label:{
                        Text("Login")
                    }
                    
                }
                
                RoundedRectangle(cornerRadius: 1).foregroundColor(.red).offset(y:40).frame(height:220)

                

                
            }


        }
    }
}

#Preview {
    LoginView()
}
