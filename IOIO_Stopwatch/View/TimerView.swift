//
//  TimerView.swift
//  IOIO_Stopwatch
//
//  Created by 최하늘 on 6/28/24.
//

import SwiftUI

struct TimerView: View {
  var time: String
  
  var body: some View {
    Text("\(time)")
      .foregroundStyle(.white)
      .font(.system(size: 86, weight: .light))
      .monospacedDigit() // 숫자 폭 고정
  }
}

#Preview {
  TimerView(time: "00:00.02")
}
