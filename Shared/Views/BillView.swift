//
//  BillView.swift
//  Tip Calculator App (iOS)
//
//  Created by Jinwook Kim on 2022/04/15.
//

import SwiftUI
import Combine

struct BillView: View {
    @State private var billString: String = ""
    @FocusState private var isBillAmountTextFieldFocused: Bool
    var body: some View {
        VStack(alignment: .leading) {
            Text("Bill")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(Color("TitleColor"))
            TextField("Bill Amount", text: $billString)
                .textFieldStyle(CalculatorTextFieldStyle())
                .multilineTextAlignment(.trailing)
                .keyboardType(.numbersAndPunctuation)
                .focused($isBillAmountTextFieldFocused)
                .onChange(of: isBillAmountTextFieldFocused) { isFocused in
                    if !isFocused {
                        
                    }
                }
                .onReceive(Just(billString)) { newValue in
                    let filteredString: String = newValue.filter {
                        "012345679.".contains($0)
                    }
                    if filteredString != newValue {
                        billString = filteredString
                    }
                }
        }
    }
}


struct BillView_Previews: PreviewProvider {
    static var previews: some View {
        BillView()
            .previewLayout(.sizeThatFits)
    }
}
