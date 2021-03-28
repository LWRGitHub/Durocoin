//
//  HowDoesDurocoinWork.swift
//  Durocoin
//
//  Created by Logan Reynolds on 3/27/21.
//

import SwiftUI

struct HowDoesDurocoinWork: View {
    @Binding var isHowDoesDurocoinWork: Bool
    
    var body: some View {
        VStack{
            Rectangle()
                .fill(Color.black)
                .frame(width: 100, height: 5)
                .cornerRadius(2.0)
                .padding(.top, 6.0)
                .onTapGesture {
                    isHowDoesDurocoinWork.toggle()
                }
            Spacer()
            Text("""
                Durocoin is like to Gold standard except instead of backing it with gold it is backed with the CPI index. The CPI index is an inflation resistent index that can be traded on the stock exchange. Backing Durocoins with the CPI index allows Durocoin to be an inflation resistant curency. Thouse if you where to buy a new pair of shoes with Duros today & another new pair of shoes 30 years latter with Duros you would spend about the same amount of money as long as suply & demand & all other reasons price changes stayed relativlly the same.
            """)
                .padding(.all, 20.0)
            Text("""
                The fact the Durocoin alows you to buy the same item for relativlly the same price at anytime in the future means that it is a good idea to save money! But with curny that is not backed by anything we have seen the value go down over time with inflation, so don't you think that if USD was a stock you would SELL & BUY another one that was not going down in value?
            """)
                .padding(.all, 20.0)
            Text("""
                You can chose at any time to change your Duro coins back into UDS or any curancy of your choce.
            """)
                .padding(.all, 20.0)
            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width, alignment: .center)
    }
}

//struct HowDoesDurocoinWork_Previews: PreviewProvider {
//    static var previews: some View {
//        HowDoesDurocoinWork()
//    }
//}
