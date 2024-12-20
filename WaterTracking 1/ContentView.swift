//
//  ContentView.swift
//  WaterTracking 1
//
//  Created by SRO on 23/05/1446 AH.
//

import SwiftUI

struct ContentView: View {
    @State private var isOn: Bool = false // Added state variable for toggle
    @State private var cupsToDrink: Int = 1 // Added state variable for stepper value

    var body: some View {
        VStack {
            Text("Water Tracker 💦")
                .font(.largeTitle) // Corrected from .largeTittle to .largeTitle
                .fontWeight(.bold)

            HStack {
                Text("Apple Health")
                Toggle(isOn: $isOn) { // Fixed the syntax for Toggle
                    Text("Enable") // Added a label for the toggle
                }
            }
            .padding()

            HStack {
                Text("Cups to drink per day: \(cupsToDrink)") // Display the selected value
                Stepper(value: $cupsToDrink, in: 1...10) { // Fixed the syntax for Stepper
                    Text("") // Stepper doesn't need a label here, as we display it above
                }
            }
            .padding()

            Button("Continue") {
                // Action for the button
                print("Continue tapped with \(cupsToDrink) cups to drink per day.")
            }
            .padding()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
