//
//  ContentView.swift
//  TicToc WatchKit Extension
//
//  Created by Vladimir Cezar on 2022-02-18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      VStack(alignment: .center, spacing: 8) {
        Text("0")
          .font(.system(size: 90))
          .fontWeight(.black)
          .multilineTextAlignment(.center)
        HStack(alignment: .center, spacing: 8) {
          Button {
            print("Increment")
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
