//
//  SwiftUIView.swift
//  LoginScreenSwiftUI
//
//  Created by Sanket Bhamare on 09/09/21.
//

import SwiftUI

struct LoginScreen: View {
    @State var email_TF = ""
    @State var password_TF = ""
    @State var showPassword = false
    @State private var isActive = false
    
    var body: some View {
        VStack(spacing:15) {
            Spacer()
            Text(Constants.instagramTxt)
                .font(.system(size: 64, weight:.semibold))
                .foregroundColor(.white)
            Spacer(minLength:5)
            Image("user")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipped()
                .frame(width: 100, height: 100, alignment: .center)
            Text("Sanket Bhamare")
                .foregroundColor(.white)
                .fontWeight(.semibold)
            //            HStack() {
            //                Image(systemName: "envelope")
            //                TextField(Constants.email, text: $email_TF)
            //                    .foregroundColor(.black)
            //            }
            //            .padding(.all,20)
            //            .background(Color.white)
            //            .cornerRadius(10)
            //            .padding(.horizontal,10)
            
            //            HStack() {
            //                Image(systemName: "lock")
            //                    .foregroundColor(.gray)
            //                SecureField(Constants.password, text: $password_TF)
            //                    .foregroundColor(.black)
            //                Button(action:{
            //                    showPassword.toggle()
            //
            //                }) {
            //                    if showPassword {
            //                        Image("eyeClose")
            //                    }
            //                    else {
            //                        Image("eyeOpen")
            //                    }
            //                }
            //            }
            //            .padding(.all,20)
            //            .background(Color.white)
            //            .cornerRadius(10)
            //            .padding(.horizontal,10)
            
            Button(action: {
                NavigationView {
                    VStack {
                        NavigationLink(destination: Color.red, isActive: $isActive) { }
                    }
                }
                
            }) {
                Text("Log in")
                    .foregroundColor(.white)
                    .font(.system(size: 24,weight:.medium))
            }.frame(maxWidth:.infinity)
            .padding(.all,20)
            .background(Color.blue.opacity(0.8))
            .cornerRadius(12)
            .padding(.horizontal,10)
            
            Button(action: {}, label: {
                Text("Remove")
                    .foregroundColor(.blue)
            })
            Spacer(minLength:5)
            
            HStack {
                Spacer(minLength: 2)
                Button(action: {}, label: {
                    Text("Switch Accounts")
                })
                Spacer()
                Button(action: {}, label: {
                    Text("Switch Accounts")
                })
                Spacer(minLength: 2)
                
            }
            .frame(maxWidth:.infinity)
            .padding(.all,20)
            .cornerRadius(12)
            .padding(.horizontal,10)
        }.background(Color.black).edgesIgnoringSafeArea(.all)
        
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
