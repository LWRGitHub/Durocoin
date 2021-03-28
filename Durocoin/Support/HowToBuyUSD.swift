//
//  HowToBuyUSD.swift
//  Durocoin
//
//  Created by Logan Reynolds on 3/27/21.
//

import SwiftUI

struct HowToBuyUSD: View {
    @Binding var isHowToBuyUSD: Bool
    
    var body: some View {
        VStack{
            Rectangle()
                .fill(Color.black)
                .frame(width: 100, height: 5)
                .cornerRadius(2.0)
                .padding(.top, 6.0)
                .onTapGesture {
                    isHowToBuyUSD.toggle()
                }
            Spacer()
            Text("""
                - Under the menu, click: 'Transfer money'

                - Link your bank by clicking: 'Setup'

                - After you have linked your bank click: 'Buy USD'"

                - enter the amount to transfer and click: 'Send'

                Your money will take 1-3 bussnessdays to show up in your bank account
            """)
                .font(.title2)
                .fontWeight(.bold)
                .padding(.all, 40.0)
            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width, alignment: .center)
    }
}

