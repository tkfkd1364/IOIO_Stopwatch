//
//  LapListView.swift
//  IOIO_Stopwatch
//
//  Created by 최하늘 on 6/28/24.
//

import SwiftUI

struct LapListView: View{
  var body: some View{
    VStack{
      HStack{
        Text("Lap1")
          .foregroundStyle(.blue)
          .padding(.leading, 16)
        
        Spacer()
        
        Text("00:00.00")
          .foregroundStyle(.blue)
          .padding(.trailing, 16)
      }
      
      Divider()
        .background(Color.red)
        .padding(.leading, 16)
        .padding(.bottom, 8)
    }
  }
}

#Preview {
  LapListView()
}
