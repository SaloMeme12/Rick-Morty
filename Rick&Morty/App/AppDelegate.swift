//
//  UIButton:0x7fdd12b0eed0'Button'.trailing\"> and <NSLayoutXAxisAnchor:0x600001222a00 \"UILayoutGuide:0x600003e37f00'UIViewSafeAreaLayoutGuide'.trailing\"> because they have no common ancestor.  Does the constraint or its anchors reference items in different view hierarchies?  That's illegal."AppDelegate.swift
//  Rick&Morty
//
//  Created by Mcbook Pro on 05.02.24.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

