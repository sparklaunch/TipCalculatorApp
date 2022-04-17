//
//  CustomTipView.swift
//  Tip Calculator App (iOS)
//
//  Created by Jinwook Kim on 2022/04/16.
//

import SwiftUI

struct CustomTipView: View {
    @FocusState private var isCustomFocused: Bool
    @Binding var customTipRate: Double
    var body: some View {
        TextField("Custom", value: $customTipRate, format: .percent.precision(.fractionLength(1)).sign(strategy: .never))
            .textFieldStyle(CustomTipRateTextFieldStyle())
            .multilineTextAlignment(.trailing)
            .keyboardType(.numberPad)
            .focused($isCustomFocused)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .strokeBorder(Color("ActiveColor"), lineWidth: 3)
                    .opacity(isCustomFocused ? 1 : .zero)
                    .animation(.default, value: isCustomFocused)
            )
    }
}

struct CustomTipView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTipView(customTipRate: .constant(0))
            .previewLayout(.sizeThatFits)
    }
}
