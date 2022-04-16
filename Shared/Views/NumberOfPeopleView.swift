//
//  NumberOfPeopleView.swift
//  Tip Calculator App (iOS)
//
//  Created by Jinwook Kim on 2022/04/16.
//

import SwiftUI

struct NumberOfPeopleView: View {
    @State private var numberOfPeople: Int = 1
    var body: some View {
        VStack(alignment: .leading) {
            Text("Number of People")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(Color("TitleColor"))
            TextField("Number of People", value: $numberOfPeople, format: .number.sign(strategy: .never))
                .textFieldStyle(NumberOfPeopleTextFieldStyle())
                .multilineTextAlignment(.trailing)
                .keyboardType(.numberPad)
        }
    }
}

struct NumberOfPeopleView_Previews: PreviewProvider {
    static var previews: some View {
        NumberOfPeopleView()
            .previewLayout(.sizeThatFits)
    }
}
