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
//            Color.blue
//                .edgesIgnoringSafeArea(.all)
            VStack{
//                LinearGradient(gradient: Gradient(colors: [Color(red: 0.0, green: 0.0, blue: 5.0), Color.blue]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
//
                
                Spacer()
                Text("Wallet")
                    .padding()
                    .foregroundColor(.white)
                    .sheet(isPresented: $isWallet){
                        Wallet(isWallet: $isWallet)
                    }
                    .onTapGesture {
                        isWallet.toggle()
                    }
                Text("Personal Information")
                    .padding()
                    .foregroundColor(.white)
                    .sheet(isPresented: $isPersonalInfo){
                        PersonalInfo(isPersonalInfo: $isPersonalInfo)
                    }
                    .onTapGesture {
                        isPersonalInfo.toggle()
                    }
                Text("Language")
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
                Color.blue                  .edgesIgnoringSafeArea(.all)
            }
            .background(Color.blue.edgesIgnoringSafeArea(.all))
        }
        .navigationBarTitle("Settings")
    }
}

struct PersonalInfo: View {
    @Binding var isPersonalInfo: Bool
    
    var body: some View {
        Text("Personal Info")
            .onTapGesture {
                isPersonalInfo.toggle()
            }
    }
}

struct Language: View {
    @Binding var isLanguage: Bool
    
    var body: some View {
        Text("Language")
            .onTapGesture {
                isLanguage.toggle()
            }
    }
}

struct Wallet: View {
    @Binding var isWallet: Bool
    
    var body: some View {
        Text("Wallet")
            .onTapGesture {
                isWallet.toggle()
            }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
