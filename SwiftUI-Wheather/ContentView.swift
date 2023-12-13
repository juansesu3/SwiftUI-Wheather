//
//  ContentView.swift
//  SwiftUI-Wheather
//
//  Created by Juan Suarez on 13/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .topLeading,
                endPoint: .bottomTrailing)
             .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                Text("Friburgo, CH")
            }
        }
    }
}

#Preview {
    ContentView()
}

