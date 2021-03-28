//
//  SettingsView.swift
//  Durocoin
//
//  Created by Logan Reynolds on 3/16/21.
//

import SwiftUI

struct SettingsView: View {
    @State private var isPersonalInfo = false
    @State private var isLanguage = false
    @State private var isWallet = false
    
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
                    Spacer()
                    Text("Wallet")
                        .fontWeight(.medium)
                        .padding()
                        .foregroundColor(.white)
                        .sheet(isPresented: $isWallet){
                            Wallet(isWallet: $isWallet)
                        }
                        .onTapGesture {
                            isWallet.toggle()
                        }
                    Text("Personal Information")
                        .fontWeight(.medium)
                        .padding()
                        .foregroundColor(.white)
                        .sheet(isPresented: $isPersonalInfo){
                            PersonalInfo(isPersonalInfo: $isPersonalInfo)
                        }
                        .onTapGesture {
                            isPersonalInfo.toggle()
                        }
                    Text("Language")                  .fontWeight(.medium)
                        .padding()
                        .foregroundColor(.white)
                        .sheet(isPresented: $isLanguage){
                            Language(isLanguage: $isLanguage)
                        }
                        .onTapGesture {
                            isLanguage.toggle()
                        }
                    Spacer()
                    Spacer()
                }
            }
        }
        .navigationBarTitle("Settings")
        .frame(width: UIScreen.main.bounds.width, alignment: .center)
    }
}


struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
