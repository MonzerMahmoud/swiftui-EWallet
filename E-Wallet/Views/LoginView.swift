//
//  LoginView.swift
//  E-Wallet
//
//  Created by Syber Expertise on 29/12/2021.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack {
            Text("Welcome back\n to E-Wallet")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color(red: 0.205, green: 0.043, blue: 0.347))
                .multilineTextAlignment(.center)
            
            Spacer()
            
            signUpOptions()
            
            LoginInformation()
            
            Spacer()
            
            LoginFooterView()
            
            Spacer()
        }
        .padding(.vertical, 30)
        .navigationBarHidden(true)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

struct signUpOptions: View {
    var body: some View {
        VStack {
            Text("Sign up with")
                .font(.subheadline)
                .fontWeight(.thin)
            
            HStack {
                Button {
                    
                } label: {
                    Image("Google-sign-in-option")
                        .shadow(color:Color(red: 0.920, green: 0.920, blue: 0.920), radius: 5, x: -3, y: 4)
                }
                
                Button {
                    
                } label: {
                    Image("Facebook-sign-in-option")
                        .shadow(color:Color(red: 0.920, green: 0.920, blue: 0.920), radius: 5, x: -3, y: 4)
                }
            }
            .padding(.horizontal)
        }
    }
}

struct LoginInformation: View {
    @State private var name: String = ""
    @State private var password: String = ""
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Image(systemName: "person")
                    .foregroundColor(.secondary)
                TextField("Username", text: $name)
                    .foregroundColor(.black)
                    .accessibilityIdentifier("usernameText")
            }
            .padding()
            .background(Color(red: 0.949, green: 0.949, blue: 0.949))
            .cornerRadius(15)
            
            HStack {
                Image(systemName: "lock")
                    .foregroundColor(.secondary)
                
                TextField("Enter password", text: $password)
                    .foregroundColor(.black)
                    .accessibilityIdentifier("passwordText")
                
                Image(systemName: "eye")
                    .foregroundColor(.gray)
            }
            .padding()
            .background(Color(red: 0.949, green: 0.949, blue: 0.949))
            .cornerRadius(15)
        }
        .padding(.horizontal, 40)
    }
}

struct LoginFooterView: View {
    var body: some View {
        VStack {
            
            NavigationLink(destination: MainTabBarView(), label: {
                Button {} label: {
                    Text("Login")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .accessibilityIdentifier("loginBtn")
                }
                .frame(width: 193, height: 83)
                .background(Color(red: 0.394, green: 0.098, blue: 0.648).cornerRadius(30))
            })
            
            
            HStack {
                Text("Don't have an account yet?")
                    .font(.subheadline)
                    .fontWeight(.ultraLight)
                
                NavigationLink(
                    destination: SignupView().navigationBarHidden(true),
                    label: {
                        Text("Register")
                            .font(.subheadline)
                            .fontWeight(.light)
                    })
//                Button {
//
//                } label: {
//                    Text("Register")
//                        .font(.subheadline)
//                        .fontWeight(.light)
//                }
                
            }
        }
    }
}
