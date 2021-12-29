//
//  IncomeStatsView.swift
//  E-Wallet
//
//  Created by Syber Expertise on 29/12/2021.
//

import SwiftUI

struct IncomeStatsView: View {
    var body: some View {
        VStack {
            HStack(spacing: 0) {
                Text("Income Stats")
                    .font(.title2)
                    .fontWeight(.medium)
            
                Spacer()
                
            }
            
            StatsView()
            
            TotalBalanceView()
            
            AllTransactionView()
            
            Spacer()
        }
        .padding()
    }
}

struct IncomeStatsView_Previews: PreviewProvider {
    static var previews: some View {
        IncomeStatsView()
    }
}

struct StatsView: View {
    var body: some View {
        VStack {
            HStack(spacing: 0) {
                Spacer()
                
                Text("Oct - Feb")
                    .fontWeight(.thin)
            }
            
            Image("stats-icon")
                .padding(.horizontal, 30)
                .padding(.vertical, 30)
        }
    }
}

struct TotalBalanceView: View {
    var body: some View {
        VStack{
            Text("Total Balance")
                .font(.callout)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
                .padding(.top)
                .padding(.bottom, 0)
            
            Text("$ 2925.75")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color(red: 0.564, green: 0.218, blue: 1.002))
                .padding(.vertical, 0)
            
            
        }
        .padding()
    }
}

struct AllTransactionView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Transaction")
                    .bold()
                    .font(.title2)
                
                
                Spacer()
                
                Text("Latest")
                    .foregroundColor(Color(red: 0.529, green: 0.242, blue: 0.998))
            }
            
            VStack(spacing: 0) {
                TransactionCell()
                TransactionCell(image: "paypal-icon", title: "Paypal", subtitle: "Tax", amount: "10$")
                TransactionCell(image: "paylater-icon", title: "Paylater", subtitle: "Buy Item", amount: "2$")
            }
            
        }
        .padding(.vertical, 25)
    }
}
