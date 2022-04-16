//
//  TipAmountView.swift
//  Tip Calculator App (iOS)
//
//  Created by Jinwook Kim on 2022/04/16.
//

import SwiftUI

struct TipAmountView: View {
    let amount: Double
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 8) {
                Text("Tip Amount")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Text("/ person")
                    .font(.body)
                    .fontWeight(.semibold)
                    .foregroundColor(.white.opacity(0.5))
            }
            Spacer()
            Text("$\(amount.formatted())")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color("ActiveColor"))
        }
    }
}

struct TipAmountView_Previews: PreviewProvider {
    static var previews: some View {
        TipAmountView(amount: 4.27)
            .background(Color("AccentColor"))
            .previewLayout(.sizeThatFits)
    }
}
