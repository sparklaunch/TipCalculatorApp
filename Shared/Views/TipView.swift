//
//  TipView.swift
//  Tip Calculator App (iOS)
//
//  Created by Jinwook Kim on 2022/04/16.
//

import SwiftUI

struct TipView: View {
    @Binding var activeTipRate: String
    let text: String
    private var isActive: Bool {
        return activeTipRate == text
    }
    var body: some View {
        Button {
            withAnimation(.spring(response: 0.3, dampingFraction: 0.6, blendDuration: .zero)) {
                activeTipRate = text
            }
        } label: {
            ZStack {
                Color(isActive ? "ActiveColor" : "AccentColor")
                Text(text)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(isActive ? Color("AccentColor") : .white)
                    .padding()
            }
            .fixedSize(horizontal: false, vertical: true)
            .cornerRadius(15)
        }
    }
}

struct TipView_Previews: PreviewProvider {
    static var previews: some View {
        TipView(activeTipRate: .constant("15%"), text: "15%")
            .previewLayout(.sizeThatFits)
    }
}
