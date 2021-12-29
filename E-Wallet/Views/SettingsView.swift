//
//  SettingsView.swift
//  E-Wallet
//
//  Created by Syber Expertise on 29/12/2021.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        VStack {
            Text("Settings")
                .foregroundColor(Color(red: 0.076, green: 0.002, blue: 0.218))
                .font(.title)
                .fontWeight(.bold)
                .padding()
            
            VStack {
                Section(image: "profile", bodyText: "Profile")
                Section(image: "notification", bodyText: "Notifications")
                Section(image: "wallet-2", bodyText: "Your Wallet")
                Section(image: "key-square", bodyText: "Login Settings")
                Section(image: "call-calling", bodyText: "Service Center")
            }
            .padding()
            
            VStack {
                Button {
                    
                } label: {
                    Image("log-out-icon")
                        .frame(width: 80, height: 80)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.gray, lineWidth: 0.3))
                        .shadow(color:Color(red: 0.920, green: 0.920, blue: 0.920), radius: 5, x: -3, y: 4)
                }
                
                Text("Log Out")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(red: 0.357, green: 0.143, blue: 0.623))
            }
            .padding()
            
            Spacer()
            
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

struct Section: View {
    var image: String = ""
    var bodyText: String = ""
    var body: some View {
        HStack(alignment: .center) {
            Image(image)
                .shadow(color:Color(red: 0.920, green: 0.920, blue: 0.920), radius: 5, x: -3, y: 4)
            
            Text(bodyText)
                .font(.title2)
                .fontWeight(.medium)
                .foregroundColor(Color(red: 0.076, green: 0.002, blue: 0.218))
                
            
            Spacer()
            
            Image("arrow-right")
                .resizable()
                .frame(width:40, height:40)
        }
        .onTapGesture {
            print("Pressed ..")
        }
    }
}
