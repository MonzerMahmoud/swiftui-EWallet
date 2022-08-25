//
//  SignupView.swift
//  E-Wallet
//
//  Created by Syber Expertise on 30/12/2021.
//

import SwiftUI

struct SignupView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            Text("Immediately feel the ease of transacting just by registering")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color(red: 0.205, green: 0.043, blue: 0.347))
            .multilineTextAlignment(.center)
            
            Spacer()
            
            signUpOptions()
            
            SignupInformation()
            
            Spacer()
            
            SignupFooterView(action: {presentationMode.wrappedValue.dismiss()})
            
            Spacer()
        }
        .padding(.vertical, 30)
        .navigationBarHidden(true)
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}

struct SignupInformation: View {
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Image(systemName: "person")
                    .foregroundColor(.secondary)
                TextField("Username", text: $name)
                    .foregroundColor(.black)
            }
            .padding()
            .background(Color(red: 0.949, green: 0.949, blue: 0.949))
            .cornerRadius(15)
            
            HStack {
                Image(systemName: "mail")
                    .foregroundColor(.secondary)
                TextField("Username", text: $email)
                    .foregroundColor(.black)
            }
            .padding()
            .background(Color(red: 0.949, green: 0.949, blue: 0.949))
            .cornerRadius(15)
            
            HStack {
                Image(systemName: "lock")
                    .foregroundColor(.secondary)
                
                TextField("Enter password", text: $password)
                    .foregroundColor(.black)
                
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

struct SignupFooterView: View {
    var action: () -> Void
    var body: some View {
        VStack {
            Button {
                
            } label: {
                Text("Register")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
            }
            .frame(width: 193, height: 83)
            .background(Color(red: 0.394, green: 0.098, blue: 0.648).cornerRadius(30))
            
            HStack {
                Text("Don't have an account yet?")
                    .font(.subheadline)
                    .fontWeight(.ultraLight)
                
                NavigationLink(destination: LoginView(), label: {
                    Button(action: action, label: {
                        Text("Login")
                            .font(.subheadline)
                            .fontWeight(.light)
                    })
                })
                
                
            }
        }
    }
}
