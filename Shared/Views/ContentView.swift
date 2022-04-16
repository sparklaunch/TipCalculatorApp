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
            ScrollView {
                VStack(spacing: 64) {
                    LogoView()
                    CalculatorView()
                }
                .padding(.top, 100)
            }
            .edgesIgnoringSafeArea(.all)
            .onAppear {
                UIScrollView.appearance().bounces = false
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
