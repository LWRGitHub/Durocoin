//
//  Sell.swift
//  Durocoin
//
//  Created by Logan Reynolds on 3/27/21.
//

import SwiftUI

struct Sell: View {
    @Binding var isBizDays: Bool
    
    var body: some View {
        VStack{
            Rectangle()
                .fill(Color.black)
                .frame(width: 100, height: 5)
                .cornerRadius(2.0)
                .padding(.top, 6.0)
                .onTapGesture {
                    isBizDays.toggle()
            }
            Text("Bank Verification")
                .font(.title)
                .padding(.all, -1.0)
            Rectangle()
                .fill(Color.gray)
                .frame(width: 500, height: 1)
            Spacer()
            Rectangle()
                .fill(Color.gray)
                .frame(width: 500, height: 1)
            HStack(spacing: 20){
                Image(systemName: "bitcoinsign.circle")
                    .font(.system(size: 25.0))
                    .foregroundColor(Color(#colorLiteral(red: 0.09437356223, green: 0.775731039, blue: 1, alpha: 1)))
                VStack(alignment: .leading){
                    Text("Bitcoin")
                    Text("Sell Đuros for Bitcoin.")
                        .foregroundColor(.gray)
                }
                .frame(width: 285, height: 65, alignment: .leading)
                Image(systemName: "arrow.right.circle.fill")
                    .font(.system(size: 25.0))
                    .foregroundColor(.gray)
            }
            .padding()
            Rectangle()
                .fill(Color.gray)
                .frame(width: 500, height: 1)
            HStack(spacing: 20){
                Image(systemName: "bitcoinsign.square")
                    .font(.system(size: 25.0))
                    .foregroundColor(Color(#colorLiteral(red: 0.09437356223, green: 0.775731039, blue: 1, alpha: 1)))
                VStack(alignment: .leading){
                    Text("Other Crypto")
                    Text("Sell Đuros for Other Crypto.")
                        .foregroundColor(.gray)
                }
                .frame(width: 285, height: 65, alignment: .leading)
                Image(systemName: "arrow.right.circle.fill")
                    .font(.system(size: 25.0))
                    .foregroundColor(.gray)
            }
            .padding()
            Rectangle()
                .fill(Color.gray)
                .frame(width: 500, height: 1)
            Spacer()
        }
    }
}

//struct Sell_Previews: PreviewProvider {
//    static var previews: some View {
//        Sell()
//    }
//}
