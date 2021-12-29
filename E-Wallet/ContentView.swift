//
//  ContentView.swift
//  E-Wallet
//
//  Created by Syber Expertise on 29/12/2021.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewRouter: ViewRouter
    var body: some View {
       MainTabBarView(viewRouter: viewRouter)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView( viewRouter: ViewRouter())
    }
}
