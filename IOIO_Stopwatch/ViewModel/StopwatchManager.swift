//
//  StopwatchManager.swift
//  IOIO_Stopwatch
//
//  Created by 최하늘 on 6/30/24.
//

import Foundation
import SwiftUI

@Observable
class StopwatchManager {
  var stopwatch: Stopwatch = Stopwatch(runningTime: 0.000, lapRunningTime: 0.000, lapTimes: [])
  private var timer = Timer()
  
  enum Mode {
    case reset
    case running
    case stop
  }
  
  var mode: Mode = .reset {
    didSet {
      switch mode {
      case .reset:
        self.resetTimer()    // 타이머 리셋
        break
      case .running:
        self.startTimer()   // 타이머 시작
        break
      case .stop:
        self.stopTimer()   // 타이머 중지
        break
      }
    }
  }
}


// MARK: ddf
extension StopwatchManager {
  func lapOrReset() {
    switch mode {
    case .reset:
      return
    case .running:
      self.recordLapTime()
    case .stop:
      self.resetStopwatch()
    }
  }
  
  func startOrStop() {
    switch mode {
    case .reset:
      print("startOrStop_reset")
      self.startStopwatch()
    case .running:
      print("startOrStop_running")
      self.stopStopwatch()
    case .stop:
      print("startOrStop_stop")
      self.startStopwatch()
    }
  }
}

// MARK: dfd
extension StopwatchManager {
  func resetStopwatch() {
    self.mode = .reset
  }
  
  func startStopwatch() {
    self.mode = .running
  }
  
  func stopStopwatch() {
    self.mode = .stop
  }
  
  func recordLapTime() {
    self.stopwatch.lapTimes.append(self.stopwatch.lapTime)
    self.stopwatch.lapRunningTime = 0.000
  }
}

// MARK: dd
extension StopwatchManager {
  func resetTimer() {
    self.timer.invalidate()
    self.stopwatch.runningTime = 0.000
    self.stopwatch.lapRunningTime = 0.000
    self.stopwatch.lapTimes.removeAll()
    print("resetTimer func")
  }
  
  func startTimer() {
    self.timer = Timer(timeInterval: 0.010, repeats: true, block: { _ in
      self.stopwatch.runningTime += 0.010
      self.stopwatch.lapRunningTime += 0.010
    })
    RunLoop.current.add(self.timer, forMode: .common)
  }
  
  func stopTimer() {
    self.timer.invalidate()
  }
}
