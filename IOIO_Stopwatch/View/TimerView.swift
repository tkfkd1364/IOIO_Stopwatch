//
//  TimerView.swift
//  IOIO_Stopwatch
//
//  Created by 최하늘 on 6/28/24.
//

import SwiftUI

struct TimerView: View {
  var body: some View {
    Text("00:00.00")
      .foregroundStyle(.gray)
      .font(.system(size: 86, weight: .light))
  }
}

#Preview {
  TimerView()
}
