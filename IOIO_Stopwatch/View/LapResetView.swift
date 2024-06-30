//
//  LapResetView.swift
//  IOIO_Stopwatch
//
//  Created by 최하늘 on 6/28/24.
//

import SwiftUI

struct LapResetView: View{
  var body: some View{
    Circle()
      .foregroundColor(.gray.opacity(0.3))
      .overlay{
        Text("Lap")
          .foregroundColor(.gray)
          .font(.title2)
          .fontWeight(.medium)
          .foregroundStyle(.black)
      }
  }
}

#Preview {
  LapResetView()
}
