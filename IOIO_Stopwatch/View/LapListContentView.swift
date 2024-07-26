//
//  LapListContentView.swift
//  IOIO_Stopwatch
//
//  Created by 최하늘 on 7/3/24.
//

import SwiftUI

struct LapListContentView: View {
  var lapTimes: [String]
  /*@State*/ var index: Int
  var time: String
  
  var body: some View {
    VStack{
      HStack{
        if index < 2 {
          Text("Lap \(index + 1)")
            .foregroundStyle(.white)
            .font(.title3)
            .fontWeight(.medium)
            .padding(.leading, 16)
          
          Spacer()
          
          Text("\(time)")
            .foregroundStyle(.white)
            .font(.title3)
            .fontWeight(.medium)
            .padding(.trailing, 16)
            .monospacedDigit()
        } else {
          let sortedLap = lapTimes.sorted()
          
          // 이게 과연 최선일까...
          if time == sortedLap.first {
            Text("Lap \(index + 1)")
              .foregroundStyle(.green)
              .font(.title3)
              .fontWeight(.medium)
              .padding(.leading, 16)
            
            Spacer()
            
            Text("\(time)")
              .foregroundStyle(.green)
              .font(.title3)
              .fontWeight(.medium)
              .padding(.trailing, 16)
              .monospacedDigit()
          } else if time == sortedLap.last {
            Text("Lap \(index + 1)")
              .foregroundStyle(.red)
              .font(.title3)
              .fontWeight(.medium)
              .padding(.leading, 16)
            
            
            Spacer()
            
            Text("\(time)")
              .foregroundStyle(.red)
              .font(.title3)
              .fontWeight(.medium)
              .padding(.trailing, 16)
              .monospacedDigit()
          } else {
            Text("Lap \(index + 1)")
              .foregroundStyle(.white)
              .font(.title3)
              .fontWeight(.medium)
              .padding(.leading, 16)
            
            
            Spacer()
            
            Text("\(time)")
              .foregroundStyle(.white)
              .font(.title3)
              .fontWeight(.medium)
              .padding(.trailing, 16)
              .monospacedDigit()
          }
          
          
        }
      }
      
      Divider()
        .background(Color.white.opacity(0.3))
        .padding(.leading, 16)
        .padding(.vertical, 8)
    }
  }
}

#Preview {
  LapListContentView(lapTimes: [
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
  ], index: 1, time: "00:00.01")
}
