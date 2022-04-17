//
//  TipSelectionView.swift
//  Tip Calculator App (iOS)
//
//  Created by Jinwook Kim on 2022/04/16.
//

import SwiftUI

struct TipSelectionView: View {
    @Binding var activeTipRate: Double
    @Binding var customTipRate: Double
    let isCustomTipRateActivated: Bool
    var body: some View {
        VStack(alignment: .leading) {
            Text("Select Tip %")
                .font(.title2)
                .fontWeight(.bold)
            .foregroundColor(Color("TitleColor"))
            VStack {
                HStack(spacing: 16) {
                    TipView(activeTipRate: $activeTipRate, isCustomTipRateActivated: isCustomTipRateActivated, tipRate: 0.05)
                    TipView(activeTipRate: $activeTipRate, isCustomTipRateActivated: isCustomTipRateActivated, tipRate: 0.10)
                }
                HStack(spacing: 16) {
                    TipView(activeTipRate: $activeTipRate, isCustomTipRateActivated: isCustomTipRateActivated, tipRate: 0.15)
                    TipView(activeTipRate: $activeTipRate, isCustomTipRateActivated: isCustomTipRateActivated, tipRate: 0.25)
                }
                HStack(spacing: 16) {
                    TipView(activeTipRate: $activeTipRate, isCustomTipRateActivated: isCustomTipRateActivated, tipRate: 0.50)
                    CustomTipView(customTipRate: $customTipRate)
                }
            }
        }
    }
}

struct TipSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        TipSelectionView(activeTipRate: .constant(0.15), customTipRate: .constant(0), isCustomTipRateActivated: false)
            .previewLayout(.sizeThatFits)
    }
}
