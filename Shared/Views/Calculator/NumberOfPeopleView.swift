//
//  NumberOfPeopleView.swift
//  Tip Calculator App (iOS)
//
//  Created by Jinwook Kim on 2022/04/16.
//

import SwiftUI

struct NumberOfPeopleView: View {
    @FocusState private var isNumberOfPeopleFocused: Bool
    @Binding var numberOfPeople: Double
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
                .focused($isNumberOfPeopleFocused)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .strokeBorder(Color("ActiveColor"), lineWidth: 3)
                        .opacity(isNumberOfPeopleFocused ? 1 : .zero)
                        .animation(.default, value: isNumberOfPeopleFocused)
                )
        }
    }
}

struct NumberOfPeopleView_Previews: PreviewProvider {
    static var previews: some View {
        NumberOfPeopleView(numberOfPeople: .constant(1))
            .previewLayout(.sizeThatFits)
    }
}
