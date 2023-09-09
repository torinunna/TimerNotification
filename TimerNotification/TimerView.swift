//
//  TimerView.swift
//  TimerNotification
//
//  Created by YUJIN KWON on 2023/09/04.
//

import SwiftUI

struct TimerView: View {
    @ObservedObject var timerViewModel = TimerViewModel()
    let durations = [30, 60, 120, 180]
    
    init(timerViewModel: TimerViewModel) {
        self.timerViewModel = timerViewModel
    }
    
    var body: some View {
        VStack {
            HStack {
                Picker("Duration", selection: $timerViewModel.time.minutes) {
                    ForEach(durations, id: \.self) { duration in
                        if duration >= 60 {
                            Text("\(duration/60)시간")
                        } else {
                            Text("\(duration)분")
                        }
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                
                Text("마다")
            }
            .padding()
            
            Button {
                timerViewModel.startTimer()
            } label: {
                Text("시작")
            }
            
            Button {
                timerViewModel.stoptimer()
            } label: {
                Text("정지")
            }
        }
    }
}
