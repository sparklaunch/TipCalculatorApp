//
//  ResultView.swift
//  Tip Calculator App (iOS)
//
//  Created by Jinwook Kim on 2022/04/16.
//

import SwiftUI

struct ResultView: View {
    var body: some View {
        ZStack {
            Color("AccentColor")
            VStack(spacing: 24) {
                TipAmountView(amount: "4.27")
                TotalView(amount: "32.79")
            }
            .padding(24)
        }
        .fixedSize(horizontal: false, vertical: true)
        .cornerRadius(15)
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView()
            .previewLayout(.sizeThatFits)
    }
}
