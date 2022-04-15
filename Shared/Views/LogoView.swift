//
//  LogoView.swift
//  Tip Calculator App (iOS)
//
//  Created by Jinwook Kim on 2022/04/15.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        Image(decorative: "Logo")
            .resizable()
            .frame(width: 87, height: 54)
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
    }
}
