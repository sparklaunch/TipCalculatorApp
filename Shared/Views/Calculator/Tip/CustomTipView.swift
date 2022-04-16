//
//  CustomTipView.swift
//  Tip Calculator App (iOS)
//
//  Created by Jinwook Kim on 2022/04/16.
//

import SwiftUI

struct CustomTipView: View {
    @Binding var customTipRate: Double
    var body: some View {
        TextField("Custom", value: $customTipRate, format: .percent.precision(.fractionLength(1)).sign(strategy: .never))
            .textFieldStyle(CustomTipRateTextFieldStyle())
            .multilineTextAlignment(.trailing)
            .keyboardType(.numberPad)
    }
}

struct CustomTipView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTipView(customTipRate: .constant(0))
            .previewLayout(.sizeThatFits)
    }
}
