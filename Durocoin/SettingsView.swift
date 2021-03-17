//
//  SettingsView.swift
//  Durocoin
//
//  Created by Logan Reynolds on 3/16/21.
//

import SwiftUI

struct SettingsView: View {
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
                Text("Personal Information")
                    .padding()
                Text("Language")
                    .padding()
                Text("Logout")
                    .padding()
                Spacer()
                Spacer()
//                Color.blue                  .edgesIgnoringSafeArea(.all)
            }
            
//            .background(Color.blue.edgesIgnoringSafeArea(.all))
        }
        .navigationBarTitle("Settings")
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
