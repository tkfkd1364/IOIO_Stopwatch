//
//  LapListView.swift
//  IOIO_Stopwatch
//
//  Created by 최하늘 on 6/28/24.
//

import SwiftUI

struct LapListView: View{
  var mode: StopwatchManager.Mode
  var lapTimes: [String]
  var currentLapTime: String
  
  var body: some View{
    VStack{
      // if 문에 대해 고민해보기
      if mode != .reset {
        LapListContentView(lapTimes: lapTimes, index: lapTimes.count, time: currentLapTime)
      }
      ForEach(lapTimes.indices.reversed(), id:\.self) { index in
        LapListContentView(lapTimes: lapTimes, index: index, time: lapTimes[index])
      }
    }
  }
}

#Preview {
  LapListView(mode: .running, lapTimes: [
    "00:00:01",
    "00:00:02",
    "00:00:03",
    "00:00:04",
    "00:00:05",
    "00:00:06",
    "00:00:07",
    "00:00:08",
    "00:00:09",
    "00:00:10",
  ], currentLapTime: "12:34:56")
}
