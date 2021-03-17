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
        NavigationView {
            ZStack{
//                Color.blue                  .edgesIgnoringSafeArea(.all)
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

//            .background(Color.blue.edgesIgnoringSafeArea(.all))
        }
        .navigationBarTitle("Support")
    }
}

struct HowToFundMyWallet: View {
    @Binding var isHowToFundMyWallet: Bool
    
    var body: some View {
        Text("HowToFundMyWallet")
            .onTapGesture {
                isHowToFundMyWallet.toggle()
            }
    }
}

struct HowToBuyUSD: View {
    @Binding var isHowToBuyUSD: Bool
    
    var body: some View {
        Text("HowToBuyUSD")
            .onTapGesture {
                isHowToBuyUSD.toggle()
            }
    }
}

struct HowDoesDurocoinWork: View {
    @Binding var isHowDoesDurocoinWork: Bool
    
    var body: some View {
        Text("HowDoesDurocoinWork")
            .onTapGesture {
                isHowDoesDurocoinWork.toggle()
            }
    }
}


struct SupportView_Previews: PreviewProvider {
    static var previews: some View {
        SupportView()
    }
}
