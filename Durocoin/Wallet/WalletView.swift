//
//  WalletView.swift
//  Durocoin
//
//  Created by Logan Reynolds on 3/15/21.
//

import SwiftUI

struct WalletView: View {
    @State private var isInvite = false
    @State private var isPayOrRequest = false
    @State var duroBalance: Double = 2350.03
    @State var showHamburgerMenu: Bool = false
    @State private var showingAlert = false
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            VStack {
                if networkManager.isLoading {
                    Text("Loading")
                } else {
                    //                    List (networkManager.txs!, id: \.id) { tx in
                    //                        TxView(tx: tx)
                    //                    }
                }
            }
            .navigationBarTitle(Text("Users"))
            //            ZStack{
            //                Rectangle()
            //                    .fill(
            //                        LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.09437356223, green: 0.775731039, blue: 1, alpha: 1)), .blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
            //                        )
            //
            //                    .frame(width: 500, height: 900)
            //                    .edgesIgnoringSafeArea(.all)
            //
            //                VStack(spacing: 0){
            //                    ZStack{
            //                        ZStack(alignment: .bottomTrailing) {
            //                            Rectangle()
            //                                .frame(width: 325, height: 150)
            //                                .foregroundColor(.white)
            //                                .cornerRadius(10.0)
            //                            Text("USD \(String(duroBalance*1.2))")
            //                                .font(.body)
            //                                .fontWeight(.regular)
            //                                .padding()
            //                                .foregroundColor(.gray)
            //                        }
            //                        Text("Đ \(String(duroBalance))")
            //                            .font(.largeTitle)
            //                    }
            //                    .padding(.bottom, 20.0)
            //                    .padding(.top, 150)
            //
            //                    ScrollView(.vertical, showsIndicators: false) {
            //                        VStack(spacing: 0){
            //                            if networkManager.isLoading {
            //                                Text("Loading")
            //                            } else {
            //                                List (networkManager.fetchTxs.txs, id: \self.id) { tx in
            //                                    TxView(tx: tx)
            //                                }
            //                            }
            //                            Rectangle()
            //                                .fill(Color.gray)
            //                                .frame(width: 500, height: 1)
            //
            //                            Rectangle()
            //                                .fill(Color.white)
            //                                .frame(width: 500, height: 290)
            //                        }
            //                    }
            //                }
            //                .padding(.top, 150)
            
            //                VStack{
            //                    HStack(spacing: 20){
            //                        Text("Invite")
            //                            .font(.headline)
            //                            .padding()
            //                            .frame(width: 120, height: 50)
            //                            .background(Color.white)
            //                            .overlay(
            //                                        Capsule(style: .continuous)
            //                                            .stroke(Color.gray, style: StrokeStyle(lineWidth: 1))
            //                                    )
            //                            .accentColor(.black)
            //                            .sheet(isPresented: $isInvite){
            //                                Invite(isInvite: $isInvite)
            //                            }
            //                            .onTapGesture {
            //                                isInvite.toggle()
            //                            }
            //                        Text("Pay or Request")
            //                            .font(.headline)
            //                            .foregroundColor(.white)
            //                            .padding()
            //                            .frame(width: 220, height: 50)
            //                            .background(
            //                                LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.09437356223, green: 0.775731039, blue: 1, alpha: 1)), .blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
            //                                )
            //                            .cornerRadius(21.0)
            //                            .sheet(isPresented: $isPayOrRequest){
            //                                PayOrRequest(isPayOrRequest: $isPayOrRequest)
            //                            }
            //                            .onTapGesture {
            //                                isPayOrRequest.toggle()
            //                            }
            //                    }
            //                    .padding(0.0)
            //                    .frame(width: 700, height: 70)
            //                    .background(Color.white.edgesIgnoringSafeArea(.all))
            //                }
            //                .padding(.top, UIScreen.main.bounds.height-280)
            //            }
            //        }
            //        .navigationBarTitle("Wallet")
            //        .frame(width: UIScreen.main.bounds.width, alignment: .center)
        }
    }
}

struct TxView: View {
    let tx = Tx.self
    
    var body: some View {
        Text("")
        //        ZStack {
        //            Rectangle()
        //                .fill(Color.white)
        //                .frame(width: 500, height: 99)
        //                .padding(0)
        //            VStack{
        //                HStack(spacing: 270){
        //                    ZStack{
        //                        VStack{
        //                            Text("Lyft")
        //                        }
        //                    }
        //                    ZStack{
        //                        VStack{
        //                            Text(tx.amountInDuros)
        //                                .foregroundColor(.red)
        //                            Text(tx.amountInDollars)
        //                                .foregroundColor(.gray)
        //                                .font(.system(size: 10))
        //                        }
        //                    }
        //                }
        //                HStack{
        //                    Text("6:00 pm Monday, March 15 2021")
        //                        .padding(.trailing, 130.0)
        //                        .font(.system(size: 15))
        //                        .foregroundColor(.gray)
        //                }
        //            }
    
    }
}

struct WalletView_Previews: PreviewProvider {
    static var previews: some View {
        WalletView()
    }
}
