//
//  ContentView.swift
//  TicToc WatchKit Extension
//
//  Created by Vladimir Cezar on 2022-02-18.
//

import SwiftUI
import Combine

struct ContentView: View {
  
    @State private var count = 0
  private var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
  
    var body: some View {
      VStack(alignment: .center, spacing: 8) {
        Text("\(count)")
          .font(.system(size: 90))
          .fontWeight(.black)
          .multilineTextAlignment(.center)
          .onReceive(timer) { time in
            print("\(time)")
          }
        HStack(alignment: .center, spacing: 8) {
          Button {
            print("Increment")
            count = count + 1
          } label: {
           Image(systemName: "plus")
              .font(.system(size: 34))
          }
          Button {
            print("Increment")
          } label: {
            Text("Go!")
              .font(.system(size: 34))
          }
        }
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
