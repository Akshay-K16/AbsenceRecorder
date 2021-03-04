//
//  ContentView.swift
//  AbsenceRecorder
//
//  Created by Khemaney, Akshay (SPH) on 01/03/2021.
//

import SwiftUI

struct ContentView: View {
    var divisions : [Division]
    @State private var currentDate: Date = Date()

    var body: some View {
        NavigationView {
            List(divisions, id: \.self.code) { division in
                DivisionItem(division: division)
            }
            .navigationTitle(currentDate.getShortDate())
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: { currentDate = currentDate.changeDay(-1)}) {
                        Image(systemName: "arrow.left.circle")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: { currentDate = currentDate.changeDay(1)}) {
                        Image(systemName: "arrow.right.circle")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(divisions: Division.examples)
    }
}
