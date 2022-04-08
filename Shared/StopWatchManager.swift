//
//  StopWatchManager.swift
//  StopWatch
//
//  Created by Marius Malyshev on 08.04.2022.
//

import Foundation

class StopWatchManager: ObservableObject {
    
    @Published var secondsPassed = 0.0
    private var timer = Timer()
    
    func start() {
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { _ in
            self.secondsPassed += 0.1
        }
    }
}
