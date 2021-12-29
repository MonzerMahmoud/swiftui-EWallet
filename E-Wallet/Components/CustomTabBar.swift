//
//  CustomTabBar.swift
//  E-Wallet
//
//  Created by Syber Expertise on 29/12/2021.
//

import SwiftUI

struct CustomTabBar: View {
    @StateObject var viewRouter: ViewRouter
    var body: some View {
        HStack(spacing: 0) {
            Spacer()
            
            Button {
                handleNavigation(navigateToPage: .home)
            } label: {
                Image("wallet")
                    .frame(width: 35, height: 35)
            }
            
            Spacer()
            
            Button {
                handleNavigation(navigateToPage: .income)
            } label: {
                Image("transactions")
                    .frame(width: 35, height: 35)
            }
            
            Spacer()
            
            Button {
                handleNavigation(navigateToPage: .notifications)
            } label: {
                Image("notification-bell")
                    .frame(width: 35, height: 35)
            }
            
            Spacer()
            
            Button {
                handleNavigation(navigateToPage: .settings)
            } label: {
                Image("setting")
                    .frame(width: 35, height: 35)
            }
            
            Spacer()
        }
        .padding()
        .background(Color(red: 0.182, green: 0.067, blue: 0.335))
        .clipShape(Capsule())
        .frame(maxWidth: 350)
        .shadow(color:Color(red: 0.833, green: 0.806, blue: 0.872), radius: 4, x: -3, y: 8)
        
    }
    
    func handleNavigation(navigateToPage page:Page) {
        viewRouter.currentPage = page
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar(viewRouter: ViewRouter())
    }
}
