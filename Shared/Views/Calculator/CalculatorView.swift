//
//  CalculatorView.swift
//  Tip Calculator App (iOS)
//
//  Created by Jinwook Kim on 2022/04/15.
//

import SwiftUI

struct CalculatorView: View {
    @State private var bill: Double = 0
    @State private var activeTipRate: Double = 0.15
    @State private var customTipRate: Double = 0
    @State private var numberOfPeople: Double = 1
    private var tipAmount: Double {
        return bill * activeTipRate
    }
    private var total: Double {
        return bill * (1 + activeTipRate) / Double(numberOfPeople)
    }
    var body: some View {
        ZStack {
            Color.white
            VStack(spacing: 24) {
                BillView(bill: $bill)
                TipSelectionView(activeTipRate: $activeTipRate, customTipRate: $customTipRate)
                NumberOfPeopleView(numberOfPeople: $numberOfPeople)
                ResultView(tipAmount: tipAmount, total: total, reset: reset)
            }
            .padding(24)
        }
        .fixedSize(horizontal: false, vertical: true)
        .cornerRadius(15)
        .shadow(radius: 10)
    }
    private func reset() -> Void {
        withAnimation(.spring(response: 0.3, dampingFraction: 0.6, blendDuration: .zero)) {
            bill = 0
            activeTipRate = 0.15
            customTipRate = 0
            numberOfPeople = 1
        }
    }
}

struct CalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView()
            .background(Color("BackgroundColor"))
            .previewLayout(.sizeThatFits)
    }
}
