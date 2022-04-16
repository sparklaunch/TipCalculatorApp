//
//  ResultView.swift
//  Tip Calculator App (iOS)
//
//  Created by Jinwook Kim on 2022/04/16.
//

import SwiftUI

struct ResultView: View {
    let tipAmount: Double
    let total: Double
    var body: some View {
        ZStack {
            Color("AccentColor")
            VStack(spacing: 24) {
                TipAmountView(amount: tipAmount)
                TotalView(amount: total)
                ResetButtonView()
            }
            .padding(24)
        }
        .fixedSize(horizontal: false, vertical: true)
        .cornerRadius(15)
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView(tipAmount: 4.27, total: 32.79)
            .previewLayout(.sizeThatFits)
    }
}
