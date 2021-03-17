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
            VStack{
//                Image("us-dollar-graph")
//                    .resizable()
                    
                Text("Đ 2,350.03")
                    .font(.largeTitle)
                    .frame(width: 300, height: 150)
                Text("Recent Activity")
                    .frame(width: 300, height: 300, alignment: .topLeading)
                Spacer()
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
                        .background(Color.blue)
                        .cornerRadius(10.0)
                        .sheet(isPresented: $isPayOrRequest){
                            PayOrRequest(isPayOrRequest: $isPayOrRequest)
                        }
                        .onTapGesture {
                            isPayOrRequest.toggle()
                        }
                    
                }
            }
           
            
        }
        
        
    }
    
}

struct Invite: View {
    @Binding var isInvite: Bool
    
    var body: some View {
        Text("Invite")
            .onTapGesture {
                isInvite.toggle()
            }
        Spacer()
    }
}

struct PayOrRequest: View {
    @Binding var isPayOrRequest: Bool
    
    var body: some View {
        Text("Pay or Request")
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
