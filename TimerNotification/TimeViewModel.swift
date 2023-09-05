//
//  TimeViewModel.swift
//  TimerNotification
//
//  Created by YUJIN KWON on 2023/09/04.
//

import Foundation

class TimerViewModel: ObservableObject {
    @Published var time: Time
    @Published var timer: Timer?
    @Published var timeRemaining: Int
    var notificationService: NotificationService
    
    init(
        time: Time = .init(minutes: 0),
        timer: Timer? = nil,
        timeRemaining: Int = 0,
        notificationService: NotificationService = .init()
    ) {
        self.time = time
        self.timer = timer
        self.timeRemaining = timeRemaining
        self.notificationService = notificationService
    }
}

extension TimerViewModel {
    func startTimer() {
        guard timer == nil else { return }
        timeRemaining = time.convertedTime
        
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            if self.timeRemaining > 0 {
                self.timeRemaining -= 1
            } else {
                self.notificationService.sendNotification()
                self.timeRemaining = self.time.convertedTime
            }
        }
    }
    
    func stoptimer() {
        timer?.invalidate()
        timer = nil
    }
}
