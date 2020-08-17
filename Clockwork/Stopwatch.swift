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

class StopwatchManager: ObservableObject {
    @Published var mode: StopwatchMode = .stopped
    var timer = Timer()
    @Published var totalRunningTime: TimeInterval = 0
        
    func start() {
        mode = .running
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) {timer in
            self.totalRunningTime += 1
        }
    }
    
    func stop() {
        timer.invalidate()
        mode = .stopped
        reset()
    }
    
    func pause() {
        timer.invalidate()
        mode = .paused
    }
    
    func reset() {
        totalRunningTime = 0
    }
}
