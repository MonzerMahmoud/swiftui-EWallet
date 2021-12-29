//
//  NotificationCell.swift
//  E-Wallet
//
//  Created by Syber Expertise on 29/12/2021.
//

import SwiftUI

enum TransactionType {
    case add
    case sub
}
struct NotificationCell: View {
    var readIndicator: Bool = false
    var date: String = "2 Jan 2022, 0:00 AM"
    var bodyText: String = "You received $ 100.000"
    var type: String = "Pay debt"
    var transactionType: TransactionType = .add
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Spacer()
                
                Image(readIndicator ? "" : "red-dot")
                    .resizable()
                    .frame(width: 10, height: 10)
            }
            
            HStack {
                VStack(alignment: .leading, spacing: 5) {
                    Text(date)
                        .font(.subheadline)
                        .fontWeight(.thin)
                    
                    Text(bodyText)
                        .multilineTextAlignment(.leading)
                        .lineLimit(2)
                    
                    Text(type)
                        .font(.subheadline)
                        .fontWeight(.thin)
                    
                }
                
                Spacer()
                
                switch transactionType {
                case .add:
                    Image("arrow-green")
                        .resizable()
                        .frame(width: 30, height: 30)
                case .sub:
                    Image("arrow-red")
                        .resizable()
                        .frame(width: 30, height: 30)
                }
            }
        }
        .frame(width: 310, height: 88)
        .padding()
        .background(Color.white)
        .cornerRadius(20)
        .shadow(color:Color(red: 0.930, green: 0.930, blue: 0.930), radius: 10, x: -5, y: 8)
        
    }
}

struct NotificationCell_Previews: PreviewProvider {
    static var previews: some View {
        NotificationCell()
    }
}
