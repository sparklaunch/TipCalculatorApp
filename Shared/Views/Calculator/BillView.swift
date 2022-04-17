//
//  BillView.swift
//  Tip Calculator App (iOS)
//
//  Created by Jinwook Kim on 2022/04/15.
//

import SwiftUI

struct BillView: View {
    @FocusState var isBillFocused: Bool
    @Binding var bill: Double
    var body: some View {
        VStack(alignment: .leading) {
            Text("Bill")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(Color("TitleColor"))
            TextField("Bill Amount", value: $bill, format: .number.precision(.fractionLength(2)).sign(strategy: .never))
                .textFieldStyle(CalculatorTextFieldStyle())
                .multilineTextAlignment(.trailing)
                .keyboardType(.numberPad)
                .focused($isBillFocused)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .strokeBorder(Color("ActiveColor"), lineWidth: 3)
                        .opacity(isBillFocused ? 1 : .zero)
                        .animation(.default, value: isBillFocused)
                )
        }
    }
}


struct BillView_Previews: PreviewProvider {
    static var previews: some View {
        BillView(bill: .constant(0))
            .previewLayout(.sizeThatFits)
    }
}
