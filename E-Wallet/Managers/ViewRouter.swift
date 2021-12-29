//
//  ViewRouter.swift
//  E-Wallet
//
//  Created by Syber Expertise on 29/12/2021.
//

import SwiftUI

enum Page {
    case home
    case income
    case notifications
    case settings
 }

class ViewRouter: ObservableObject {
     
     @Published var currentPage: Page = .home
 }
