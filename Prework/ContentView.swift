//
//  ContentView.swift
//  Prework
//
//  Created by SEAN DONOVAN on 1/5/25.
//

import SwiftUI

struct ContentView: View {
    // State variables to hold the background and text colors
    @State private var backgroundColor: Color = Color.white
    @State private var nameColor: Color = Color.black
    @State private var universityColor: Color = Color.black
    @State private var jobColor: Color = Color.black

    var body: some View {
        VStack {
            // Labels with random colors
            Text("Sean Donovan")
                .font(.title)
                .foregroundColor(nameColor)
                .padding(.bottom, 5)
            Text("University of Pennsylvania")
                .font(.subheadline)
                .foregroundColor(universityColor)
                .padding(.bottom, 5)
            Text("Software Engineer")
                .font(.subheadline)
                .foregroundColor(jobColor)
                .padding(.bottom, 20)
                
            // Button to change background and text colors
            Button(action: {
                self.backgroundColor = self.randomColor()
                self.nameColor = self.randomColor()
                self.universityColor = self.randomColor()
                self.jobColor = self.randomColor()
            }) {
                Text("Change Background Color")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding(.horizontal)
        }
        .padding()
        .background(backgroundColor.edgesIgnoringSafeArea(.all))
    }
    
    // Function to generate a random color
    func randomColor() -> Color {
        return Color(
            red: Double.random(in: 0...1),
            green: Double.random(in: 0...1),
            blue: Double.random(in: 0...1)
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
