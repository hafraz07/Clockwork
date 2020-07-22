//
//  Stopwatch.swift
//  Clockwork
//
//  Created by Afraz Hasan on 20/7/20.
//  Copyright © 2020 Afraz Hasan. All rights reserved.
//

import SwiftUI

enum StopwatchMode {
    case stopped
    case paused
    case running
}

class TimeBreakdown: ObservableObject {
    @Published var hours = 0
    @Published var minutes = 0
    @Published var secondsElapsed = 0
}

class StopwatchManager: ObservableObject {
    @Published var mode: StopwatchMode = .stopped
    var timer = Timer()
//    @ObservedObject var timeKeeper = TimeBreakdown()
    @Published var hours = 0
    @Published var minutes = 0
    @Published var secondsElapsed = 0
        
    func start() {
        mode = .running
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) {timer in
            self.secondsElapsed += 1;
            if (self.secondsElapsed > 59) {
                self.secondsElapsed = 0
                self.minutes += 1
            }
            if (self.minutes > 59) {
                self.minutes = 0
                self.hours += 1
            }
        }
    }
    
    func stop() {
        timer.invalidate()
        mode = .stopped
        //Appends activity to env object array
//        self.userData.activities.append(Activity(hours: self.hours, minutes: self.minutes, seconds: self.secondsElapsed))
        reset()
    }
    
    func pause() {
        timer.invalidate()
        mode = .paused
    }
    
    func reset() {
        secondsElapsed = 0
        hours = 0
        minutes = 0
    }
}
