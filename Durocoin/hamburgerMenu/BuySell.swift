//
//  BuySell.swift
//  Durocoin
//
//  Created by Logan Reynolds on 3/27/21.
//

import SwiftUI

struct BuySell: View {
    @Binding var isTransferMoney: Bool
    @State private var isBizDays = false
    @State private var isInstant = false
    
    var body: some View {
        VStack{
            Rectangle()
                .fill(Color.black)
                .frame(width: 100, height: 5)
                .cornerRadius(2.0)
                .padding(.top, 6.0)
                .onTapGesture {
                    isTransferMoney.toggle()
            }
            Text("Buy/Sell Đuros")
                .font(.title)
                .padding(.all, -1.0)
            Rectangle()
                .fill(Color.gray)
                .frame(width: 500, height: 1)
            Spacer()
            Spacer()
            VStack{
                HStack{
                    Text("Đ 0.00")
                        .font(.system(size: 40.0))
                        .padding(.leading, 6.0)
                    Image(systemName: "clear.fill")
                        .font(.system(size: 15.0))
                        .padding(.bottom, 15.0)
                        .foregroundColor(.gray)
                }
                Text("Buy/Sell up to Đ 0.00")
                    .font(.system(size: 11.0))
                    .padding(.all, 2.0)
            }
            Spacer()
            Spacer()
            HStack(spacing: 40){
                VStack{
                    ZStack{
                        Circle()
                            .fill(
                                LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.09437356223, green: 0.775731039, blue: 1, alpha: 1)), .blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                )
                            .frame(width: 45, height: 45)
                        Image(systemName: "tag")
                            .padding(.top, 20.0)
                            .font(.system(size: 15.0))
                            .foregroundColor(.white)
                        Text("Buy")
                            .fontWeight(.bold)
                            .padding(.bottom, 15.0)
                            .font(.system(size: 15.0))
                            .foregroundColor(.white)
                    }
                    Text("Buy Đuros")
                        .font(.system(size: 20.0))
                    Text("1% fee (max Đ10.00)")
                        .font(.system(size: 11.0))
                        .foregroundColor(.gray)
                }
                .padding(.all, 20.0)
                .overlay(
                            Capsule(style: .continuous)
                                .stroke(Color.gray, style: StrokeStyle(lineWidth: 1))
                        )
                .sheet(isPresented: $isInstant){
                    Buy(isInstant: $isInstant)
                }
                .onTapGesture {
                    isInstant.toggle()
                }
                VStack{
                    ZStack{
                        Circle()
                            .fill(
                                LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.09437356223, green: 0.775731039, blue: 1, alpha: 1)), .blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                )
                            .frame(width: 45, height: 45)
                        Image(systemName: "tag")
                            .padding(.top, 20.0)
                            .font(.system(size: 15.0))
                            .foregroundColor(.white)
                        Text("Sell")
                            .fontWeight(.bold)
                            .padding(.bottom, 15.0)
                            .font(.system(size: 15.0))
                            .foregroundColor(.white)
                    }
                    Text("Sell Đuros")
                        .font(.system(size: 20.0))
                    Text("1% fee (max Đ10.00)")
                        .font(.system(size: 11.0))
                        .foregroundColor(.gray)
                }
                .padding(.all, 20.0)
                .overlay(
                            Capsule(style: .continuous)
                                .stroke(Color.gray, style: StrokeStyle(lineWidth: 1))
                        )
                .sheet(isPresented: $isBizDays){
                    Sell(isBizDays: $isBizDays)
                }
                .onTapGesture {
                    isBizDays.toggle()
                }
            }
            Spacer()
        }
    }
}

//struct BuySell_Previews: PreviewProvider {
//    static var previews: some View {
//        BuySell()
//    }
//}
