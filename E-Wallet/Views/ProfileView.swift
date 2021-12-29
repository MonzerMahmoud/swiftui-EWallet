//
//  ProfileView.swift
//  E-Wallet
//
//  Created by Syber Expertise on 29/12/2021.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            
            ProfileMeta()
            
            VStack {
                ProfileSection(title: "Connected Account")
                ProfileSection(title: "Privacy and security")
                ProfileSection(title: "Login Settings")
                ProfileSection(title: "Service Center")
            }
            .padding()
            
            VStack {
                Button {
                    
                } label: {
                    Image("trash")
                        .frame(width: 80, height: 80)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.gray, lineWidth: 0.3))
                        .shadow(color:Color(red: 0.920, green: 0.920, blue: 0.920), radius: 5, x: -3, y: 4)
                }
                
                Text("Delete Account")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(red: 0.357, green: 0.143, blue: 0.623))
                    .padding(.vertical)
            }
            .padding()
            
            Spacer()
        }
        .padding(.vertical, 80)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

struct MoonMask: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Rectangle().path(in: rect)
        path.addPath(Circle().path(in: rect.inset(by: UIEdgeInsets(top: 0, left: -10, bottom: 30, right: -10))
            .offsetBy(dx: 0, dy: 0)))
        return path
    }
}

struct ProfileMeta: View {
    var body: some View {
        VStack {
            ZStack(alignment: .bottom) {
                Image("Profile-Picture")
                    .resizable()
                    .frame(width: 120, height: 120)
                
                Circle()
                    .mask(MoonMask().fill(style: FillStyle(eoFill: true)))
                    .frame(width: 120, height: 120)
                    .foregroundColor(Color(red: 0.465, green: 0.387, blue: 0.552, opacity: 0.9))
                //.padding()
                
                Text("change")
                    .foregroundColor(.white)
                    .frame(width: 100)
                    .padding(.vertical, 10)
            }
            
            HStack {
                Text("Monzer")
                    .font(.title2)
                    .fontWeight(.bold)
                
                Image("edit")
            }
        }
    }
}

struct ProfileSection: View {
    var title: String = ""
    var body: some View {
        VStack(spacing: 0) {
            HStack(alignment: .center) {
                
                Text(title)
                    .font(.title2)
                    .fontWeight(.medium)
                    .foregroundColor(Color(red: 0.076, green: 0.002, blue: 0.218))
                    .frame(height: .infinity)
                
                Spacer()
                
                Image("arrow-right")
                    .resizable()
                    .frame(width:40, height:40)
            }
            .padding(.horizontal)
        }
        .padding()
    }
}
