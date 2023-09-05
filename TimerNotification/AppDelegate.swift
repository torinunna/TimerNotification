//
//  AppDelegate.swift
//  TimerNotification
//
//  Created by YUJIN KWON on 2023/09/04.
//

import UIKit

class AppDelegate: NSObject, UIApplicationDelegate {
    var notifDelegate = NotificationDelegate()
    
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil
    ) -> Bool {
        UNUserNotificationCenter.current().delegate = notifDelegate
        return true
    }
}
