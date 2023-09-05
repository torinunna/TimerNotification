//
//  Time.swift
//  TimerNotification
//
//  Created by YUJIN KWON on 2023/09/04.
//

import Foundation

struct Time {
    var minutes: Int
    
    var convertedTime: Int {
        return minutes * 60
    }
}
