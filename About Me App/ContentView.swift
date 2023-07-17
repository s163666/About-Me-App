//
//  ContentView.swift
//  About Me App
//
//  Created by Scholar on 7/13/23.

//For button need (1) State Variable, (2) Button, and (3) If statement

import SwiftUI

struct ContentView: View {
    @State private var showBio = false
    var body: some View {
        VStack {
            Text("S C H O L A R")
                .font(.largeTitle)
                .fontWeight(.thin)
            Spacer()
            Image("aboutMe")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
            Button(action: {showBio.toggle()}) {
                Text("Click to learn more about me!")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(18)
            }
            if showBio {
                Text("I'm a sophmore who loves playing basketball and the violin. I am also on my school's robotics team! Outside of school I am a dedicated Duck mom!")
                    .font(.subheadline)
                    .padding()
                    .multilineTextAlignment(.center)
            }
        }
        .padding()
    }
}
struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
}



