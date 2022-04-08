//
//  StopWatchView.swift
//  Shared
//
//  Created by Marius Malyshev on 08.04.2022.
//

import SwiftUI

struct StopWatchView: View {
    
    @State private var progressTime = 0
    
    var hours: Int {
        progressTime / 3600
    }
    var minutes: Int {
        hours / 60
    }
    var seconds: Int {
        progressTime % 60
    }
    
    var timer: Timer {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            progressTime += 1
        }
    }
    
    var body: some View {
        Text("\(hours):\(minutes):\(seconds)")
            .padding()
            .onAppear(perform: {_ = timer})
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StopWatchView()
    }
}
