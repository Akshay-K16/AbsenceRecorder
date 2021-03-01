//
//  ContentView.swift
//  AbsenceRecorder
//
//  Created by Khemaney, Akshay (SPH) on 01/03/2021.
//

import SwiftUI

struct ContentView: View {
    let divisions = Division.examples

    var body: some View {
        Text("Division: \(divisions[0].code)")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
