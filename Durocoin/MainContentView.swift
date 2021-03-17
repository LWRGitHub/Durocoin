//
//  MainContentView.swift
//  Durocoin
//
//  Created by Logan Reynolds on 3/16/21.
//

import SwiftUI

struct MainContentView: View {
    @State var showHamburgerMenu = false
        
        
        var body: some View {
            
            
            let drag = DragGesture()
                .onEnded {
                    if $0.translation.width < -100 {
                        withAnimation {
                            self.showHamburgerMenu = false
                        }
                    }
            }
            
            return NavigationView {
                GeometryReader { geometry in
                    ZStack(alignment: .leading) {
                        MainView(showHamburgerMenu: self.$showHamburgerMenu)
                            .frame(width: geometry.size.width, height: geometry.size.height)
                            .offset(x: self.showHamburgerMenu ? geometry.size.width/2 : 0)
                            .disabled(self.showHamburgerMenu ? true : false)
                        
                        if self.showHamburgerMenu {
                            MenuView()
                                .frame(width: geometry.size.width/2)
                                .transition(.move(edge: .leading))
                        }
                    }
                    .gesture(drag)
                    
                }
                .navigationBarTitle("Wallet")
                .navigationBarItems(trailing: (
                    Button(action: {
                        withAnimation {
                            self.showHamburgerMenu.toggle()
                        }
                    }) {
                        Image(systemName: "line.horizontal.3")
                            .imageScale(.large)
                    }
                ))
            }
            
        }
}

//struct MainView: View {
//    @Binding var showHamburgerMenu: Bool
//    
//    var body: some View {
//        Button(action: {
//            withAnimation {
//                self.showHamburgerMenu = true
//            }
//        }) {
//            Text("Show Menu")
//        }
//    }
//}
//
//struct MenuView: View {
//    var body: some View {
//        VStack(alignment: .leading) {
//            HStack {
//                Image(systemName: "creditcard")
//                    .foregroundColor(.gray)
//                    .imageScale(.large)
//                NavigationLink(destination: WalletView()) {
//                    Text("Wallet")
//                        .foregroundColor(.gray)
//                        .font(.headline)
//                }
//            }
//            .padding(.top, 100)
//            HStack {
//                Image(systemName: "person.fill.questionmark")
//                    .foregroundColor(.gray)
//                    .imageScale(.large)
//                NavigationLink(destination: SupportView()) {
//                    Text("Support")
//                        .foregroundColor(.gray)
//                        .font(.headline)
//                }
//            }
//            .padding(.top, 30)
//            HStack {
//                Image(systemName: "gear")
//                    .foregroundColor(.gray)
//                    .imageScale(.large)
//                NavigationLink(destination: SettingsView()) {
//                    Text("Settings")
//                        .foregroundColor(.gray)
//                        .font(.headline)
//                }
//            }
//            .padding(.top, 30)
//            Spacer()
//        }
//        .padding()
//        .frame(maxWidth: .infinity, alignment: .leading)
//        .background(Color(red: 32/255, green: 32/255, blue: 32/255))
//        .edgesIgnoringSafeArea(.all)
//    }
//}


struct MainContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainContentView()
    }
}
