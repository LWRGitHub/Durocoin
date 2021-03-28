//
//  Wallet.swift
//  Durocoin
//
//  Created by Logan Reynolds on 3/27/21.
//

import SwiftUI

struct Wallet: View {
    @Binding var isWallet: Bool
    @State var foreignTransactions: Bool = false
    
    var body: some View {
        VStack{
            Rectangle()
                .fill(Color.black)
                .frame(width: 100, height: 5)
                .cornerRadius(2.0)
                .padding(.top, 6.0)
                .onTapGesture {
                    isWallet.toggle()
                }
            Spacer()
            
            Form{
                Toggle(isOn: $foreignTransactions) {
                    Text("Allow Foreign Transactions")
                }
            }
            
            Spacer()
            Text("Save")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: 300, height: 50)
                .background(
                    LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.09437356223, green: 0.775731039, blue: 1, alpha: 1)), .blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                .cornerRadius(10.0)
        }
        .frame(width: UIScreen.main.bounds.width, alignment: .center)
    }
}

//struct Wallet_Previews: PreviewProvider {
//    static var previews: some View {
//        Wallet()
//    }
//}
