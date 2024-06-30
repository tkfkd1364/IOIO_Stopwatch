//
//  LapResetView.swift
//  IOIO_Stopwatch
//
//  Created by 최하늘 on 6/28/24.
//

import SwiftUI

struct LapResetView: View{
  var mode: StopwatchManager.Mode
  
  var body: some View{
    if mode == .reset {
      Circle()
        .foregroundColor(.gray.opacity(0.2))
        .overlay{
          Text("Lap")
            .foregroundColor(.gray)
            .font(.title2)
            .fontWeight(.medium)
            .foregroundStyle(.black)
        }
    } else if mode == .running {
      Circle()
        .foregroundColor(.gray.opacity(0.3))
        .overlay{
          Text("Lap")
            .foregroundColor(.white)
            .font(.title2)
            .fontWeight(.medium)
            .foregroundStyle(.black)
        }
    } else {
      Circle()
        .foregroundColor(.gray.opacity(0.3))
        .overlay{
          Text("Reset")
            .foregroundColor(.white)
            .font(.title2)
            .fontWeight(.medium)
            .foregroundStyle(.black)
        }
    }
  }
}

#Preview {
  LapResetView(mode: .running)
}
