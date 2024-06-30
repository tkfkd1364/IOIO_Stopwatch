//
//  LapListView.swift
//  IOIO_Stopwatch
//
//  Created by 최하늘 on 6/28/24.
//

import SwiftUI

struct LapListView: View{
  var lapTimes: [String]
  var currentLapTime: String
  
  var body: some View{
    VStack{
      ForEach(lapTimes.indices.reversed(), id:\.self) { index in
        HStack{
          Text("Lap \(index + 1)")
            .foregroundStyle(.blue)
            .font(.title3)
            .fontWeight(.medium)
            .padding(.leading, 16)
          
          Spacer()
          
          Text("\(lapTimes[index])")
            .foregroundStyle(.blue)
            .font(.title3)
            .fontWeight(.medium)
            .padding(.trailing, 16)
            .monospacedDigit()
        }
        
        Divider()
          .background(Color.red)
          .padding(.leading, 16)
          .padding(.bottom, 8)
      }
    }
  }
}

#Preview {
  LapListView(lapTimes: [
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
