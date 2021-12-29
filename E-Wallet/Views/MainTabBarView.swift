//
//  MainTabBarView.swift
//  E-Wallet
//
//  Created by Syber Expertise on 29/12/2021.
//

import SwiftUI

struct MainTabBarView: View {
    @StateObject var viewRouter: ViewRouter
    var body: some View {
        ZStack {
            
            switch viewRouter.currentPage {
            case .home:
                HomeView()
            case .income:
                IncomeStatsView()
            case .notifications:
                Text("Notification")
            case .settings:
                Text("Settings")
            }
            
            VStack {
                Spacer()
                
                CustomTabBar(viewRouter: viewRouter)
            }
        }
    }
}

struct MainTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabBarView(viewRouter: ViewRouter())
    }
}
