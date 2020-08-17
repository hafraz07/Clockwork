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
    case suspended
}

class StopwatchManager: ObservableObject {
    private var previouslyAccumulatedTime: TimeInterval = 0
    private var startDate: Date? = nil
    private var lastStopDate: Date? = nil
    @Published var mode: StopwatchMode = .stopped
    
    private weak var timer: Timer? = nil
    @Published var totalRunningTime: TimeInterval = 0
    
    private func shutdownTimer() {
        // how long we've been in the .running state
        let accumulatedRunningTime = Date().timeIntervalSince(startDate!)
        // total running time: however long we had been running before entering the
        // current .running state, plus how long we've now been running now
        previouslyAccumulatedTime += accumulatedRunningTime
        totalRunningTime = previouslyAccumulatedTime
        
        // remember when we shut down
        lastStopDate = Date()
        // throw out the time
        if mode != .paused {
            timer!.invalidate()
        }
        timer = nil  // should happen anyway with a weak variable
    }
            
    func start() {
        startDate = Date()
        if mode == .suspended {
            startDate = lastStopDate
        }
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) {timer in
            self.totalRunningTime = self.previouslyAccumulatedTime + Date().timeIntervalSince(self.startDate!)
        }
        RunLoop.current.add(timer!, forMode:RunLoop.Mode.default)
        mode = .running
    }
    
    func stop() {
        shutdownTimer()
        mode = .stopped
        reset()
    }
    
    func pause() {
        shutdownTimer()
        mode = .paused
    }
    
    func suspend() {
        shutdownTimer()
        mode = .suspended
    }
    
    func reset() {
        totalRunningTime = 0
        previouslyAccumulatedTime = 0
    }
}
