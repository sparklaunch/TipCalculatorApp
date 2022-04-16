//
//  File.swift
//  Tip Calculator App (iOS)
//
//  Created by Jinwook Kim on 2022/04/15.
//

import SwiftUI

struct CalculatorTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        return HStack {
            Image(decorative: "Dollar")
                .resizable()
                .frame(width: 11, height: 17)
                .padding(.horizontal)
            configuration
                .padding()
                .font(.system(size: 24, weight: .bold, design: .monospaced))
                .foregroundColor(Color("AccentColor"))
        }
        .background(Color("TextFieldColor"))
        .cornerRadius(15)
    }
}

struct CustomTipRateTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding()
            .font(.system(size: 24, weight: .bold, design: .monospaced))
            .foregroundColor(Color("AccentColor"))
            .background(Color("TextFieldColor"))
            .cornerRadius(15)
    }
}

struct NumberOfPeopleTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        return HStack {
            Image(decorative: "Person")
                .resizable()
                .frame(width: 13, height: 16)
                .padding(.horizontal)
            configuration
                .padding()
                .font(.system(size: 24, weight: .bold, design: .monospaced))
                .foregroundColor(Color("AccentColor"))
        }
        .background(Color("TextFieldColor"))
        .cornerRadius(15)
    }
}
