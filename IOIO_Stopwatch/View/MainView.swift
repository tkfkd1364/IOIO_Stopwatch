//
//  MainView.swift
//  IOIO_Stopwatch
//
//  Created by 최하늘 on 6/28/24.
//

import SwiftUI

struct MainView: View{
  var  body: some View{
    VStack{
      // 시간
      TimerView()
        .padding(.vertical, 80)
      
      // 버튼
      HStack(spacing: 120){
        // Lap <-> Reset Button
        Button(
          action: {
            print("clicked LapReset")
          },
          label: {
            LapResetView()
          }
        )
        .padding(.leading, 16)
        
        // Start <-> Stop Button
        Button(
          action: {
            print("clicked StartStop")
          },
          label: {
            StartStopView()
          }
        )
        .padding(.trailing, 16)
      }
      .padding(.bottom, 16)
      
      // Lap 기록
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
  MainView()
}

