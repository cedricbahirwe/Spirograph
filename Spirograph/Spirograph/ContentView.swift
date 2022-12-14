//
//  ContentView.swift
//  Spirograph
//
//  Created by Cédric Bahirwe on 14/12/2022.
//

import SwiftUI

struct ContentView: View {
    @State var rotations = 1
    @State private var colors: [Color] = [.red, .green, .black, .blue]
    var body: some View {
        HStack {
            Spacer(minLength: 200)
            SpiroSquare(rotations: $rotations)
                .stroke()
                .fill(colors.randomElement()!)
                .frame(width: 200, height: 200)
                .onReceive(Timer.publish(every: 0.3, on: .main, in: .common).autoconnect(), perform: { _ in
                        rotations += 1
                })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
