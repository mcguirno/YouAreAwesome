//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Noah McGuire on 1/28/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    @State private var imageNumber = 0
    @State private var messageNumber = 0
    var body: some View {
        
        VStack {
            
            Spacer()
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(.rect(cornerRadius: 30))
                .shadow(radius: 30)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .multilineTextAlignment(.center)
            
            Spacer()
            
            Button("Show Message"){
                let messages = ["Great work!", "Keep it up!", "You're Doing Great!", "High Five!", "Outstanding!"]
                // message = (message == message1 ? message2 : message1)
                message = messages[messageNumber]
                messageNumber += 1
                if messageNumber == messages.count {
                    messageNumber = 0
                }
                imageName = "image\(imageNumber)"
                imageNumber += 1
                if imageNumber > 9 {
                    imageNumber = 0
                }
            }
                .buttonStyle(.borderedProminent)
                .font(.title2)
                .tint(.orange)
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
