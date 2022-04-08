//
//  StopWatchView.swift
//  Shared
//
//  Created by Marius Malyshev on 08.04.2022.
//

import SwiftUI

struct StopWatchView: View {
    
    @ObservedObject var stopWatchManager = StopWatchManager()
    
    var body: some View {
        VStack {
            Text(String(format: "%.1f", stopWatchManager.secondsPassed))
                .font(.system(size: 40))
                .padding()
            Button {
                self.stopWatchManager.start()
            } label: {
                Text("Start")
                    .font(.system(size: 40))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StopWatchView()
    }
}
