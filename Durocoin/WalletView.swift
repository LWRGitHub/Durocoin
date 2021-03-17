//
//  WalletView.swift
//  Durocoin
//
//  Created by Logan Reynolds on 3/15/21.
//

import SwiftUI

struct WalletView: View {
    
    
    
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
                    NavigationLink(destination: InviteView()) {
                        Text("Invite")
                            .font(.headline)
                            .padding()
                            .frame(width: 120, height: 50)
                            .cornerRadius(10.0)
                            .border(Color.gray, width: 1)
                            .accentColor(.black)
                    }
                    NavigationLink(destination: PayOrRequestView()) {
                        Text("Pay or Request")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 220, height: 50)
                            .background(Color.blue)
                            .cornerRadius(10.0)
                    }
                }
            }
            .navigationBarTitle("Wallet")
           
            
        }
        
        
    }
    
}

struct WalletView_Previews: PreviewProvider {
    static var previews: some View {
        WalletView()
    }
}
