//
//  MainView.swift
//  IOIO_Stopwatch
//
//  Created by 최하늘 on 6/28/24.
//

import SwiftUI

struct MainView: View{
  // var stopwatchManger: StopwatchManager
  var stopwatchManager: StopwatchManager
  
  var  body: some View{
    VStack{
      // 시간
      TimerView()
        .padding(.vertical, 80)
      
      // 버튼
      HStack(spacing: 120){
        // MARK: Lap <-> Reset Button
        Button(
          action: {
            if stopwatchManager.mode == .reset{
              stopwatchManager.lapOrReset()
              print("this mode is reset")
            } else if stopwatchManager.mode == .running {
              stopwatchManager.lapOrReset()
              print("this mode is running")
            } else {
              stopwatchManager.lapOrReset()
              print("this mode is stop")
            }
          },
          label: {
            LapResetView(mode: stopwatchManager.mode)
          }
        )
        .padding(.leading, 16)
        
        // MARK: Start <-> Stop Button
        Button(
          action: {
            if stopwatchManager.mode == .reset {
              stopwatchManager.startOrStop()
              print("this mode is reset")
            } else if stopwatchManager.mode == .running {
              stopwatchManager.startOrStop()
              print("this mode is running")
            } else {
              stopwatchManager.startOrStop()
              print("this mode is stop")
            }
          },
          label: {
            StartStopView(mode: stopwatchManager.mode)
          }
        )
        .padding(.trailing, 16)
      }
      .padding(.bottom, 16)
      
      // MARK: Lap 기록
      Divider()
        .background(Color.red)
        .padding(.leading, 16)
        .padding(.bottom, 8)
      
      LapListView()
      
      Spacer()
    }
    .background(Color(uiColor: .black))
  }
}

#Preview {
  MainView(stopwatchManager: StopwatchManager())
}

