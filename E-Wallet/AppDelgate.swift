//
//  AppDelgate.swift
//  E-Wallet
//
//  Created by Syber Expertise on 20/05/2022.
//

import UIKit

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        print("Your code here")
        #if DEV
            print("This is DEV ...")
        #else
            print("This is PROD")
        #endif
        version()
        return true
    }
    
    func version(){
        let dictionary = Bundle.main.infoDictionary!
        let CFBundleShortVersionString = dictionary["CFBundleShortVersionString"] as! String
        print("CFBundleShortVersionString = \(CFBundleShortVersionString)")
        let CFBundleVersion = dictionary["CFBundleVersion"] as! String
        print("CFBundleVersion = \(CFBundleVersion)")
//        let CFBundleBuildNumber = dictionary["CFBundleBuildNumber"] as! String
//        print("CFBundleBuildNumber = \(CFBundleBuildNumber)")
        let CFBundleDisplayName = dictionary["CFBundleDisplayName"] as! String
        print("CFBundleDisplayName = \(CFBundleDisplayName)")
        let CFBundleExecutable = dictionary["CFBundleExecutable"] as! String
        print("CFBundleExecutable = \(CFBundleExecutable)")
        let CFBundleIdentifier = dictionary["CFBundleIdentifier"] as! String
        print("CFBundleIdentifier = \(CFBundleIdentifier)")
        let CFBundleName = dictionary["CFBundleName"] as! String
        print("CFBundleName = \(CFBundleName)")
        
    }
}

