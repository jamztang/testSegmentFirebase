//
//  AppDelegate.swift
//  testSegmentFirebase
//
//  Created by James Tang on 26/5/2020.
//  Copyright © 2020 James Tang. All rights reserved.
//

import UIKit
import Analytics

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.

        let configuration = SEGAnalyticsConfiguration(writeKey: "kGGrwBlAMPiYLDnddmDNT4uOwKP9VLoK")

        // Enable this to record certain application events automatically!
        configuration.trackApplicationLifecycleEvents = true

        // Enable this to record screen views automatically!
//        configuration.recordScreenViews = true

        SEGAnalytics.setup(with: configuration)

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

