//
//  TimerNotificationApp.swift
//  TimerNotification
//
//  Created by YUJIN KWON on 2023/09/03.
//

import SwiftUI

@main
struct TimerNotificationApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            TimerView(timerViewModel: TimerViewModel())
        }
    }
}
