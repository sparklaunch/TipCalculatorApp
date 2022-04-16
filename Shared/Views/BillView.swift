//
//  BillView.swift
//  Tip Calculator App (iOS)
//
//  Created by Jinwook Kim on 2022/04/15.
//

import SwiftUI
import Combine

struct BillView: View {
    @State private var bill: Double = 0
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
        }
    }
}


struct BillView_Previews: PreviewProvider {
    static var previews: some View {
        BillView()
            .previewLayout(.sizeThatFits)
    }
}
