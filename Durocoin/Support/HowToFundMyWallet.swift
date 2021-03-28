//
//  HowToFundMyWallet.swift
//  Durocoin
//
//  Created by Logan Reynolds on 3/27/21.
//

import SwiftUI

struct HowToFundMyWallet: View {
    @Binding var isHowToFundMyWallet: Bool
    
    var body: some View {
        VStack{
            Rectangle()
                .fill(Color.black)
                .frame(width: 100, height: 5)
                .cornerRadius(2.0)
                .padding(.top, 6.0)
                .onTapGesture {
                    isHowToFundMyWallet.toggle()
                }
            Spacer()
            Text("""
                - Under the menu, click: 'Transfer money'

                - Link you cripto wallet by clicking: 'Setup'

                - After you have linked your crypto wallet click: 'Added Duros'"

                - enter the amount to transfer and click: 'Send'
                """)
                .font(.title2)
                .fontWeight(.bold)
                .padding(.all, 40.0)
            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width, alignment: .center)
    }
}


