//
//  Stopwatch.swift
//  IOIO_Stopwatch
//
//  Created by 최하늘 on 6/30/24.
//

import Foundation

struct Stopwatch {
    var runningTime: Double  // 스톱워치 경과시간(ms)
    var lapRunningTime: Double          // 랩타임 경과시간(ms)
    var lapTimes: [String]          // 랩타임 목록

    var runTime: String {       // 스톱워치 경과시간(ms)를 문자열(mm:ss.SS)로 저장
        return timeString(runningTime)
    }

    var lapTime: String {         // 랩타임 경과시간(ms)를 문자열(mm:ss.SS)로 저장
        return timeString(lapRunningTime)
    }
}

private extension Stopwatch {
    func timeString(_ millisecond: Double) -> String {
        let secondElapsed = (Int(millisecond) % 1000) % 60
        let minuteElapsed = ((Int(millisecond) % 1000) / 60) % 60
        return String(format: "%02d:%02d.%02d", minuteElapsed, secondElapsed, Int(millisecond * 100) % 100 )
    }
}
