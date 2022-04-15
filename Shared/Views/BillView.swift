//
//  BillView.swift
//  Tip Calculator App (iOS)
//
//  Created by Jinwook Kim on 2022/04/15.
//

import SwiftUI

struct BillView: View {
    @State private var billString: String = ""
    var body: some View {
        VStack(alignment: .leading) {
            Text("Bill")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(Color("TitleColor"))
            TextField("Bill Amount", text: $billString)
                .textFieldStyle(CalculatorTextFieldStyle())
        }
    }
}

struct BillView_Previews: PreviewProvider {
    static var previews: some View {
        BillView()
            .previewLayout(.sizeThatFits)
    }
}
