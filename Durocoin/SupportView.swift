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
    }
}


struct SupportView_Previews: PreviewProvider {
    static var previews: some View {
        SupportView()
    }
}
