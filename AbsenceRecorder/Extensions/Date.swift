//
//  Date.swift
//  AbsenceRecorder
//
//  Created by Khemaney, Akshay (SPH) on 04/03/2021.
//

import Foundation

extension Date {
    func getShortDate() -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        
        return formatter.string(from: self)
    }
    
    func changeDay(_ numberOfDays: Int) -> Date {
        return Calendar.current.date(byAdding: .day, value: numberOfDays, to: self) ?? Date()
    }
}
