//
//  TipSelectionView.swift
//  Tip Calculator App (iOS)
//
//  Created by Jinwook Kim on 2022/04/16.
//

import SwiftUI

struct TipSelectionView: View {
    @State private var activeTipRate: String = "15%"
    var body: some View {
        VStack(alignment: .leading) {
            Text("Select Tip %")
                .font(.title2)
                .fontWeight(.bold)
            .foregroundColor(Color("TitleColor"))
            VStack {
                HStack(spacing: 16) {
                    TipView(activeTipRate: $activeTipRate, text: "5%")
                    TipView(activeTipRate: $activeTipRate, text: "10%")
                }
                HStack(spacing: 16) {
                    TipView(activeTipRate: $activeTipRate, text: "15%")
                    TipView(activeTipRate: $activeTipRate, text: "25%")
                }
                HStack(spacing: 16) {
                    TipView(activeTipRate: $activeTipRate, text: "50%")
                    CustomTipView()
                }
            }
        }
    }
}

struct TipSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        TipSelectionView()
            .previewLayout(.sizeThatFits)
    }
}
