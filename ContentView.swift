//
//  ContentView.swift
//  pinchtozoom
//
//  Created by Rudraansh Dhoot on 12/12/2021.
//

import SwiftUI

struct ContentView: View {
    @State var currentScale: CGFloat = 1
    var body: some View {
        NavigationView {
            VStack {
                Text("Hello, world!")
                    .font(.system(size: 30,weight: .semibold))
                    .foregroundColor(.green)
                    .padding()
                    .background(.black)
                    .scaleEffect(currentScale)
                    .gesture(
                        MagnificationGesture()
                            .onChanged { newScale in
                                currentScale = newScale
                            }
                            .onEnded{ scale in
                                
                            }
                    )
            }.navigationTitle("Pinch To Zoom")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
