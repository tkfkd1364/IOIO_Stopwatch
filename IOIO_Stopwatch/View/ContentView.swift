//
//  ContentView.swift
//  IOIO_Stopwatch
//
//  Created by 최하늘 on 6/28/24.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
      MainView(stopwatchManager: StopwatchManager())
    }
  }
}

#Preview {
  ContentView()
}
