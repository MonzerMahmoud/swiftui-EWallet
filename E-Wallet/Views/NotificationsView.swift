//
//  NotificationsView.swift
//  E-Wallet
//
//  Created by Syber Expertise on 29/12/2021.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("Notification")
                    .foregroundColor(Color(red: 0.076, green: 0.002, blue: 0.218))
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                
                NewNotifications()
                
                OldNotifications()
                
                Spacer()
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView()
    }
}

struct NewNotifications: View {
    var body: some View {
        VStack {
            Text("New")
                .foregroundColor(Color(red: 0.213, green: 0.218, blue: 0.326))
                .font(.title3)
                .fontWeight(.regular)
            
            VStack(spacing: 15) {
                NotificationCell()
                NotificationCell(readIndicator: false, bodyText: "You bought Netflix subsribtion", type: "Month subscribtion", transactionType: .sub)
            }
        }
        .padding()
    }
}

struct OldNotifications: View {
    var body: some View {
        VStack {
            Text("Recent")
                .foregroundColor(Color(red: 0.213, green: 0.218, blue: 0.326))
                .font(.title3)
                .fontWeight(.regular)
            
            VStack(spacing: 15) {
                NotificationCell(readIndicator:true)
                NotificationCell(readIndicator: true, bodyText: "You bought Sptify subsribtion", type: "Month subscribtion", transactionType: .sub)
                NotificationCell(readIndicator: true, bodyText: "You sent $ 200 ", type: "Transfer", transactionType: .sub)
                NotificationCell(readIndicator:true)
            }
        }
        .padding()
    }
}
