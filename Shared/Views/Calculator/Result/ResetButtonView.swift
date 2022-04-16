//
//  ResetButtonView.swift
//  Tip Calculator App (iOS)
//
//  Created by Jinwook Kim on 2022/04/16.
//

import SwiftUI

struct ResetButtonView: View {
    let reset: () -> Void
    var body: some View {
        Button {
            reset()
        } label: {
            ZStack {
                Color("ActiveColor")
                Text("RESET")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color("AccentColor"))
                    .padding()
            }
            .fixedSize(horizontal: false, vertical: true)
            .cornerRadius(15)
        }
    }
}

struct ResetButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ResetButtonView(reset: {})
            .previewLayout(.sizeThatFits)
    }
}
