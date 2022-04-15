//
//  ContentView.swift
//  Shared
//
//  Created by Jinwook Kim on 2022/04/15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            VStack(spacing: 64) {
                LogoView()
                CalculatorView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
