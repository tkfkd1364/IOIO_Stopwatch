//
//  MainView.swift
//  IOIO_Stopwatch
//
//  Created by 최하늘 on 6/28/24.
//

import SwiftUI

struct MainView: View{
  var stopwatchManager: StopwatchManager
  
  var  body: some View{
    VStack{
      // 시간
      TimerView(time: stopwatchManager.stopwatch.runTime)
        .padding(.vertical, 80)
      
      // 버튼
      HStack(spacing: 120){
        // MARK: Lap <-> Reset Button
        Button(
          action: {
            stopwatchManager.lapOrReset()
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
        .background(Color.red)
        .padding(.leading, 16)
        .padding(.bottom, 8)
      
      // MARK: Lap List
      ScrollView{
        LapListView(lapTimes: stopwatchManager.stopwatch.lapTimes,
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

