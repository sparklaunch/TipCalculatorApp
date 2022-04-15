//
//  CalculatorView.swift
//  Tip Calculator App (iOS)
//
//  Created by Jinwook Kim on 2022/04/15.
//

import SwiftUI

struct CalculatorView: View {
    var body: some View {
        ZStack {
            Color.white
            VStack {
                BillView()
            }
        }
        .cornerRadius(15)
        .shadow(radius: 10)
    }
}

struct CalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView()
            .previewLayout(.sizeThatFits)
    }
}
