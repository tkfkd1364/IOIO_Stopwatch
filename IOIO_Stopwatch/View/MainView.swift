//
//  MainView.swift
//  IOIO_Stopwatch
//
//  Created by 최하늘 on 6/28/24.
//

import SwiftUI

struct MainView: View {
  var stopwatchManager: StopwatchManager
  
  var  body: some View {
    VStack {
      // 시간
      TimerView(time: stopwatchManager.stopwatch.runTime)
        .padding(.vertical, 80)
      
      // 버튼
      HStack(spacing: 120) {
        // MARK: Lap <-> Reset Button
        Button(
          action: {
            stopwatchManager.lapOrReset()
            var sortedLap = stopwatchManager.stopwatch.lapTimes.sorted()
            print(sortedLap)
          },
          label: {
            LapResetView(mode: stopwatchManager.mode)
          }
        )
        .padding(.leading, 16)
        
        // MARK: Start <-> Stop Button
        Button(
          action: {
            stopwatchManager.startOrStop()
          },
          label: {
            StartStopView(mode: stopwatchManager.mode)
          }
        )
        .padding(.trailing, 16)
      }
      .padding(.bottom, 16)
      
      Divider()
        .background(Color.white.opacity(0.3))
        .padding(.leading, 16)
        .padding(.bottom, 8)
      
      // MARK: Lap List
      ScrollView {
        LapListView(mode: stopwatchManager.mode, lapTimes: stopwatchManager.stopwatch.lapTimes,
                    currentLapTime: stopwatchManager.stopwatch.lapTime)
      }
      
      Spacer()
      
    }
    .background(Color(uiColor: .black))
  }
}

#Preview {
  MainView(stopwatchManager: StopwatchManager())
}

