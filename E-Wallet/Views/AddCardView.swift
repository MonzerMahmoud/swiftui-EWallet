//
//  AddCardView.swift
//  E-Wallet
//
//  Created by Syber Expertise on 30/12/2021.
//

import SwiftUI

struct AddCardView: View {
    var body: some View {
        VStack {
            Text("Settings")
                .foregroundColor(Color(red: 0.076, green: 0.002, blue: 0.218))
                .font(.title)
                .fontWeight(.bold)
                .padding()
            
            ZStack() {
                Color(red: 0.394, green: 0.098, blue: 0.648).cornerRadius(30).frame(width: 240, height: 350)
                    .shadow(color: Color(red: 0.896, green: 0.844, blue: 0.941), radius: 1, x: 0, y: 5)
                
                Image("sim")
                    .frame(width: 180, height: 250,alignment: .topLeading)
                    
                
                Text("VISA")
                    .foregroundColor(.white)
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding()
                    .frame(width: 180, height: 250,alignment: .bottomTrailing)
                    
            }
            
            Spacer()
            
            Text("Add a new card \non your wallet for easy life")
                .font(.title3)
                .multilineTextAlignment(.center)
            Spacer()
        }
        .padding()
    }
}

struct AddCardView_Previews: PreviewProvider {
    static var previews: some View {
        AddCardView()
    }
}
