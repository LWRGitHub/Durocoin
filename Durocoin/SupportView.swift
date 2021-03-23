//
//  SupportView.swift
//  Durocoin
//
//  Created by Logan Reynolds on 3/16/21.
//

import SwiftUI

struct SupportView: View {
    @State private var isHowToFundMyWallet = false
    @State private var isHowToBuyUSD = false
    @State private var isHowDoesDurocoinWork = false
    
    var body: some View {
        ZStack{
            Rectangle()
                .fill(
                    LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.09437356223, green: 0.775731039, blue: 1, alpha: 1)), .blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    )

                .frame(width: 500, height: 900)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Spacer()
                Text("How to fund my wallet?")
                    .font(.headline)
                    .foregroundColor(.black)
                    .padding()
                    .frame(width: 300, height: 70)
                    .background(Color.white)
                    .cornerRadius(10.0)
                    .sheet(isPresented: $isHowToFundMyWallet){
                        HowToFundMyWallet(isHowToFundMyWallet: $isHowToFundMyWallet)
                    }
                    .onTapGesture {
                        isHowToFundMyWallet.toggle()
                    }
            
                Text("How to buy USD?")
                    .font(.headline)
                    .foregroundColor(.black)
                    .padding()
                    .frame(width: 300, height: 70)
                    .background(Color.white)
                    .cornerRadius(10.0)
                    .sheet(isPresented: $isHowToBuyUSD){
                        HowToBuyUSD(isHowToBuyUSD: $isHowToBuyUSD)
                    }
                    .onTapGesture {
                        isHowToBuyUSD.toggle()
                    }
     
                Text("How does Đurocoin work?")
                    .font(.headline)
                    .foregroundColor(.black)
                    .padding()
                    .frame(width: 300, height: 70)
                    .background(Color.white)
                    .cornerRadius(10.0)
                    .sheet(isPresented: $isHowDoesDurocoinWork){
                        HowDoesDurocoinWork(isHowDoesDurocoinWork: $isHowDoesDurocoinWork)
                    }
                    .onTapGesture {
                        isHowDoesDurocoinWork.toggle()
                    }
               
                Spacer()
                Spacer()
                NavigationLink(destination: SupportChatView()) {
                    Text("Start a Support Chat")
                        .font(.headline)
                        .foregroundColor(.black)
                        .padding()
                        .frame(width: 300, height: 70)
                        .background(Color.white)
                        .cornerRadius(10.0)
                }
                Spacer()
            }
            
        }

        .background(Color.blue.edgesIgnoringSafeArea(.all))
        .navigationBarTitle("Support")
    }
}

struct HowToFundMyWallet: View {
    @Binding var isHowToFundMyWallet: Bool
    
    var body: some View {
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
}

struct HowToBuyUSD: View {
    @Binding var isHowToBuyUSD: Bool
    
    var body: some View {
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
}

struct HowDoesDurocoinWork: View {
    @Binding var isHowDoesDurocoinWork: Bool
    
    var body: some View {
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
}


struct SupportView_Previews: PreviewProvider {
    static var previews: some View {
        SupportView()
    }
}
