//
//  AbsenceView.swift
//  AbsenceRecorder
//
//  Created by Khemaney, Akshay (SPH) on 11/03/2021.
//

import SwiftUI

struct AbsenceView: View {
    let division: Division
    
    var body: some View {
        Text(division.code)
    }
}

struct AbsenceView_Previews: PreviewProvider {
    static var previews: some View {
        AbsenceView(division: Division.examples[0])
    }
}
