//
//  Buy.swift
//  Durocoin
//
//  Created by Logan Reynolds on 3/27/21.
//

import SwiftUI

struct Buy: View {
    @Binding var isInstant: Bool
    
    var body: some View {
        VStack{
            Rectangle()
                .fill(Color.black)
                .frame(width: 100, height: 5)
                .cornerRadius(2.0)
                .padding(.top, 6.0)
                .onTapGesture {
                    isInstant.toggle()
            }
            Text("Choice How")
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
                Image(systemName: "bitcoinsign.circle.fill")
                    .font(.system(size: 30.0))
                    .foregroundColor(Color(#colorLiteral(red: 0.09437356223, green: 0.775731039, blue: 1, alpha: 1)))
                VStack(alignment: .leading){
                    Text("Bitcoin")
                    Text("Buy Đuros With Bitcoin.")
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
                    Text("Buy Đuros With Some Other Cypto.")
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

//struct Buy_Previews: PreviewProvider {
//    static var previews: some View {
//        Buy()
//    }
//}
