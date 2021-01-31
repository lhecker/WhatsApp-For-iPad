//
//  AppDelegate.swift
//
//  Created by Tung Ai Tang on 01/06/2020.
//  Copyright © 2020 Tung Ai Tang. All rights reserved.
//

import UIKit
import UserNotifications
import BackgroundTasks

@UIApplicationMain
class AppDelegate: UIResponder,  UIApplicationDelegate, UNUserNotificationCenterDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        UNUserNotificationCenter.current().delegate = self

        // Request authorization for posting user notifications.
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert]) { (granted, error) in
            // Enable or disable features based on authorization.
        }
        return true
    }

    // Not necessary but included for this example as it likely is running in the foreground.
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        completionHandler(UNNotificationPresentationOptions.alert)
    }
}


