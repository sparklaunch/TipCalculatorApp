//
//  NumberOfPeopleView.swift
//  Tip Calculator App (iOS)
//
//  Created by Jinwook Kim on 2022/04/16.
//

import SwiftUI

struct NumberOfPeopleView: View {
    @FocusState private var isNumberOfPeopleFocused: Bool
    @State private var isNumberOfPeopleZero: Bool = false
    @Binding var numberOfPeople: Double
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Number of People")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color("TitleColor"))
                Spacer()
                Text("Can't be zero")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color("WarningColor"))
                    .opacity(isNumberOfPeopleZero ? 1 : .zero)
            }
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
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .strokeBorder(Color("WarningColor"), lineWidth: 3)
                        .opacity(isNumberOfPeopleZero ? 1 : .zero)
                )
                .onChange(of: isNumberOfPeopleFocused) { isFocused in
                    withAnimation(.default) {
                        isNumberOfPeopleZero = !isFocused && numberOfPeople == 0
                    }
                }
        }
    }
}

struct NumberOfPeopleView_Previews: PreviewProvider {
    static var previews: some View {
        NumberOfPeopleView(numberOfPeople: .constant(1))
            .previewLayout(.sizeThatFits)
    }
}
