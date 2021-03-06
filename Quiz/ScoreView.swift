//
//  ScoreView.swift
//  Quiz
//
//  Created by YJ Soon on 12/6/21.
//

import SwiftUI

struct ScoreView: View {
    
    var score: Int
    var totalScore: Int
    
    @Environment(\.openURL) var openURL
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
            VStack {
                Text("Your score was:")
                Text("\(score)/\(totalScore)")
                    .bold()
                
                // im such a great contributor
                Button("Learn More") {
                    openURL(URL(string: "https://www.youtube.com/watch?v=dQw4w9WgXcQ")!)
                }
            }
            .padding()
            .background(Color.white)
            .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
            .cornerRadius(10)
        }
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(score: 15, totalScore: 20)
    }
}
