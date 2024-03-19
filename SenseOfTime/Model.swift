//
//  Model.swift
//  SenseOfTime
//
//  Created by 송재훈 on 3/19/24.
//

import SwiftUI

enum Status {
    case main, ready, play, end
    
    enum ButtonStatus {
        case stop, play, pause
    }
    
    func buttonColor(_ buttonStatus: ButtonStatus) -> Color {
        switch self {
        case .main:
            switch buttonStatus {
            case .stop:
                    .gray
            case .play:
                    .green
            case .pause:
                    .clear
            }
            
        case .ready:
            switch buttonStatus {
            case .stop:
                    .red
            case .play:
                    .clear
            case .pause:
                    .gray
            }
            
        case .play:
            switch buttonStatus {
            case .stop:
                    .red
            case .play:
                    .clear
            case .pause:
                    .orange
            }
            
        case .end:
            switch buttonStatus {
            case .stop:
                    .red
            case .play:
                    .clear
            case .pause:
                    .gray
            }
        }
    }
    
    func buttonOpacity(_ buttonStatus: ButtonStatus) -> Double {
        switch self {
        case .main:
            switch buttonStatus {
            case .stop:
                1.0
            case .play:
                1.0
            case .pause:
                0.0
            }
            
        case .ready:
            switch buttonStatus {
            case .stop:
                1.0
            case .play:
                0.0
            case .pause:
                1.0
            }
            
        case .play:
            switch buttonStatus {
            case .stop:
                1.0
            case .play:
                0.0
            case .pause:
                1.0
            }
            
        case .end:
            switch buttonStatus {
            case .stop:
                1.0
            case .play:
                0.0
            case .pause:
                1.0
            }
        }
    }
}
