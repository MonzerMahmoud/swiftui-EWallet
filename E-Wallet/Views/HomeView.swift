//
//  HomeView.swift
//  E-Wallet
//
//  Created by Syber Expertise on 29/12/2021.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Header()
            
            BalanceView()
            
            Services()
            
            LastTransactions()
            //.padding()
            
            Spacer()
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

fileprivate struct Header: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading,spacing: 0) {
                Text("Wallet")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Text("Active")
                    .font(.title3)
                    .fontWeight(.ultraLight)
            }
            
            Spacer()
            
            Image("Profile-Picture")
            
        }
        .padding()
    }
}

struct BalanceView: View {
    var body: some View {
        ZStack {
            
            Image("Rectangle-BG")
                .shadow(color:Color(red: 0.833, green: 0.806, blue: 0.872), radius: 4, x: -3, y: 8)
            
            HStack {
                VStack {
                    Text("Balance")
                        .foregroundColor(.white)
                        .font(.title3)
                        //.padding()
                        
                    
                    Text("$953.74")
                        .foregroundColor(.white)
                        .font(.title2)
                        .fontWeight(.bold)
                }
                .padding(.horizontal, 30)
                

                    
                //Spacer()
                
                VStack {
                    Text("Card")
                        .foregroundColor(.white)
                    .font(.title3)
                    
                    Text("Mbok")
                        .foregroundColor(.white)
                        .font(.title2)
                        .fontWeight(.bold)
                }
                .padding(.horizontal, 30)
                
            }
            .padding()
        }
        
    }
}

struct Services: View {
    var body: some View {
        HStack {
            VStack(spacing: 0) {
                Image("transfer-icon")
                    .shadow(color:Color(red: 0.920, green: 0.920, blue: 0.920), radius: 5, x: -3, y: 4)
                Text("Transfer")
                    .foregroundColor(Color(red: 0.529, green: 0.242, blue: 0.998))
            }
            
            VStack(spacing: 0) {
                Image("export")
                    .shadow(color:Color(red: 0.920, green: 0.920, blue: 0.920), radius: 5, x: -3, y: 4)
                Text("Payment")
                    .foregroundColor(Color(red: 0.529, green: 0.242, blue: 0.998))
            }
            
            VStack(spacing: 0) {
                Image("money-send")
                    .shadow(color:Color(red: 0.920, green: 0.920, blue: 0.920), radius: 5, x: -3, y: 4)
                Text("Payout")
                    .foregroundColor(Color(red: 0.529, green: 0.242, blue: 0.998))
            }
            
            VStack(spacing: 0) {
                Image("add-circle")
                    .shadow(color:Color(red: 0.920, green: 0.920, blue: 0.920), radius: 5, x: -3, y: 4)
                Text("Top up")
                    .foregroundColor(Color(red: 0.529, green: 0.242, blue: 0.998))
            }
        }
        .padding()
    }
}

struct TransactionCell: View {
    var image: String = "netflix-icon"
    var title: String = "Netflix"
    var subtitle: String = "Monthly subescription"
    var amount: String = "20$"
    
    var body: some View {
        HStack(spacing: 0) {
            Image(image)
            
            VStack(alignment: .leading, spacing: 0) {
                Text(title)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .frame(alignment: .leading)
                
                Text(subtitle)
                    .font(.subheadline)
                    .fontWeight(.thin)
                
            }
            .frame(maxHeight: .infinity)
            
            Spacer()
            
            Text(amount)
                .font(.title3)
                .fontWeight(.medium)
                .padding()
        }
        
    }
}

struct LastTransactions: View {
    var body: some View {
        VStack {
            HStack {
                Text("Last Transaction")
                    .bold()
                    .font(.title2)
                
                
                Spacer()
                
                Text("View All")
                    .foregroundColor(Color(red: 0.529, green: 0.242, blue: 0.998))
            }
            //.padding(.horizontal, 10)
            
            VStack {
                TransactionCell()
                TransactionCell(image: "paypal-icon", title: "Paypal", subtitle: "Tax", amount: "10$")
                TransactionCell(image: "paylater-icon", title: "Paylater", subtitle: "Buy Item", amount: "2$")
            }
            
        }
        .padding()
    }
}


