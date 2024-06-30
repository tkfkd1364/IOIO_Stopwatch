//
//  StartStopView.swift
//  IOIO_Stopwatch
//
//  Created by 최하늘 on 6/28/24.
//

import SwiftUI

struct StartStopView: View{
  var body: some View{
    
    Circle()
      .foregroundColor(.green.opacity(0.3))
      .overlay{
        Text("Start")
          .foregroundColor(.green)
          .font(.title2)
          .fontWeight(.medium)
          .foregroundStyle(.black)
      }
  }
}

#Preview {
  StartStopView()
}
