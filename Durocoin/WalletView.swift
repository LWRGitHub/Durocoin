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
    
    
    var body: some View {
        NavigationView {
            ZStack{
                Rectangle()
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.09437356223, green: 0.775731039, blue: 1, alpha: 1)), .blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        )

                    .frame(width: 500, height: 900)
                    .edgesIgnoringSafeArea(.all)
            
                VStack{
                    Text("Đ 2,350.03")
                        .font(.largeTitle)
                        .frame(width: 325, height: 150)
                        .background(Color.white)
                        .cornerRadius(10.0)
                    Text("Recent Activity")
                        .fontWeight(.bold)
                        .padding(.top, 10.0)
                        .frame(width: 325, height: 20, alignment: .topLeading)
                        .foregroundColor(.white)
                    
                    ZStack{
                        Rectangle()
                            .fill(Color(red: 0.9, green: 0.9, blue: 0.9, opacity: 1.0))
                            .frame(width: 500, height: 400)
                        VStack{
                            Rectangle()
                                .fill(Color.white)
                                .frame(width: 500, height: 99)
                            Rectangle()
                                .fill(Color.white)
                                .frame(width: 500, height: 99)
                            Rectangle()
                                .fill(Color.white)
                                .frame(width: 500, height: 99)
                            Rectangle()
                                .fill(Color.white)
                                .frame(width: 500, height: 99)
                        }
                    }
                    
                    HStack(spacing: 20){
                        
                        Text("Invite")
                            .font(.headline)
                            .padding()
                            .frame(width: 120, height: 50)
                            .cornerRadius(10.0)
                            .border(Color.gray, width: 1)
                            .accentColor(.black)
                            .sheet(isPresented: $isInvite){
                                Invite(isInvite: $isInvite)
                            }
                            .onTapGesture {
                                isInvite.toggle()
                            }
                        
                        
                    
                        Text("Pay or Request")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 220, height: 50)
                            .background(
                                LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.09437356223, green: 0.775731039, blue: 1, alpha: 1)), .blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                )
                            .cornerRadius(10.0)
                            .sheet(isPresented: $isPayOrRequest){
                                PayOrRequest(isPayOrRequest: $isPayOrRequest)
                            }
                            .onTapGesture {
                                isPayOrRequest.toggle()
                            }
                            
                        
                    }
                    .padding(0.0)
                    .frame(width: 700, height: 70)
                    .background(Color.white.edgesIgnoringSafeArea(.all))
                }
            }
           
            
        }
        
        
    }
    
}

struct Invite: View {
    @Binding var isInvite: Bool
    
    var body: some View {
        Rectangle()
            .fill(Color.black)
            .frame(width: 100, height: 5)
            .cornerRadius(2.0)
            .padding(.top, 6.0)
            .onTapGesture {
                isInvite.toggle()
            }
        Spacer()
    }
}

struct PayOrRequest: View {
    @Binding var isPayOrRequest: Bool
    
    var body: some View {
        Rectangle()
            .fill(Color.black)
            .frame(width: 100, height: 5)
            .cornerRadius(2.0)
            .padding(.top, 6.0)
            .onTapGesture {
                isPayOrRequest.toggle()
            }
        Spacer()
    }
}

struct WalletView_Previews: PreviewProvider {
    static var previews: some View {
        WalletView()
    }
}
