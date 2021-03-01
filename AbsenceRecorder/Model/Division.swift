//
//  Division.swift
//  AbsenceRecorder
//
//  Created by Khemaney, Akshay (SPH) on 01/03/2021.
//

import Foundation

class Division {
    let code: String
    var students: [Student] = []
    
    init(code: String) {
        self.code = code
    }
    
    #if DEBUG
    static func createDivison(code: String, of size: Int) -> Division {
        let division = Division(code: code)
        
        for i in 0..<size {
            let student = Student(forename: "Student", surname: String(i), birthday: Date())
            division.students.append(student)
        }
        
        return division
    }
    
    static let examples = [Division.createDivison(code: "vBY-1", of: 10),
                           Division.createDivison(code: "vCX-1", of: 8),
                           Division.createDivison(code: "vD3-1", of: 16),
                           Division.createDivison(code: "vE2-1", of: 18)]
    #endif
}
