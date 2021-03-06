//
//  TotalView.swift
//  Tip Calculator App (iOS)
//
//  Created by Jinwook Kim on 2022/04/16.
//

import SwiftUI

struct TotalView: View {
    let amount: Double
    private var amountString: String {
        return String(format: "$%.2f", amount)
    }
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 8) {
                Text("Total")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Text("/ person")
                    .font(.body)
                    .fontWeight(.semibold)
                    .foregroundColor(.white.opacity(0.5))
            }
            Spacer()
            Text(amountString)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color("ActiveColor"))
        }
    }
}

struct TotalView_Previews: PreviewProvider {
    static var previews: some View {
        TotalView(amount: 32.79)
            .background(Color("AccentColor"))
            .previewLayout(.sizeThatFits)
    }
}
