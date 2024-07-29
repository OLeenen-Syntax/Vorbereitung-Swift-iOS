//
//  Enums.swift
//  Vorbereitung Swift iOS
//
//  Created by Okan Leenen on 29.07.24.
//

import Foundation


enum Weekday{
    case monday, tuesday, wednesday, thursday, friday, saturday, sunday
    
    func isWeekend() -> String {
        switch self {
        case .saturday, .sunday:
            return "Wochenende"
        default:
            return "Arbeitstag"
            
        }
        
    }
    
}
