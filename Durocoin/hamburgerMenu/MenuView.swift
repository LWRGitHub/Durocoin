//
//  MenuView.swift
//  Durocoin
//
//  Created by Logan Reynolds on 3/27/21.
//

import SwiftUI

struct MenuView: View {
    @State private var ShowLogout = false
    @State private var showingAlert = false
    @State private var isTransferMoney: Bool = false
    
    var body: some View {
        GeometryReader { geometry in
            HStack{
                VStack(alignment: .leading) {
                    
                    Button("Logout") {
                        showingAlert.toggle()
                    }
                    .alert(isPresented: $showingAlert) {
                        Alert(title: Text("Logout"), message: Text("Are you sure, you want to logout?"), primaryButton: .default(Text("No")), secondaryButton: .default(Text("Yes")))
                    }
                    .padding(.top, 40.0)
                    .padding(.bottom, 5.0)
                    .padding(.leading, 15.0)
                    
                    Text("Hi, UserName")
                        .font(.largeTitle)
                        .padding(.bottom, 10.0)
                        .padding(.leading, 15.0)
                        
                    Rectangle()
                        .fill(Color.gray)
                        .frame(width: geometry.size.width, height: 1)
                        .padding(.vertical, 10.0)
                    HStack(spacing: 50){
                        Text("Đ 2,358.73")
                            .padding(.leading, 15.0)
                        Text("Buy/Sell Đuros")
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            .sheet(isPresented: $isTransferMoney){
                                BuySell(isTransferMoney: $isTransferMoney)
                            }
                            .onTapGesture {
                                isTransferMoney.toggle()
                            }
                    }
                    Rectangle()
                        .fill(Color.gray)
                        .frame(width: geometry.size.width, height: 1)
                        .padding(.vertical, 10.0)
                    HStack {
                        Image(systemName: "creditcard")
                            .foregroundColor(.black)
                            .imageScale(.large)
                            .font(.headline)
                            .padding(.leading, 15.0)
                        NavigationLink(destination: WalletView()) {
                            Text("Wallet")
                                .foregroundColor(.black)
                        }
                    }
                    .padding(.top, 5)
                    HStack {
                        Image(systemName: "person.fill.questionmark")
                            .foregroundColor(.black)
                            .imageScale(.large)
                            .font(.headline)
                            .padding(.leading, 15.0)
                        NavigationLink(destination: SupportView()) {
                            Text("Support")
                                .foregroundColor(.black)
                        }
                    }
                    .padding(.top, 30)
                    HStack {
                        Image(systemName: "gear")
                            .foregroundColor(.black)
                            .imageScale(.large)
                            .font(.headline)
                            .padding(.leading, 15.0)
                        NavigationLink(destination: SettingsView()) {
                            Text("Settings")
                                .foregroundColor(.black)
                        }
                    }
                    .padding(.top, 30)
                    Spacer()
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                .edgesIgnoringSafeArea(.all)
                .shadow(radius: 7)
                
            }
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
