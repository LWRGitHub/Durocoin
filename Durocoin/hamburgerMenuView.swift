//
//  hamburgerMenuView.swift
//  Durocoin
//
//  Created by Logan Reynolds on 3/16/21.
//

import SwiftUI

struct hamburgerMenuView: View {
    @State var showHamburgerMenu = false
    @State var show = false
    
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
                ZStack(alignment: .trailing) {
                    
                    MainView(showHamburgerMenu: self.$showHamburgerMenu)
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .disabled(self.showHamburgerMenu ? true : false)
                    
                    
                    if self.showHamburgerMenu {
                        
                        MenuView()
                            .frame(width: geometry.size.width/5*4)
                            .transition(.move(edge: .trailing))
//                            .navigationBarHidden(true)
                    }
                }
                .gesture(drag)
            }
            .navigationBarItems(trailing: (
                Button(action: {
                    withAnimation {
                        self.showHamburgerMenu.toggle()
                    }
                }) {
                    Image(systemName: "line.horizontal.3")
                        .imageScale(.large)
                }
                .foregroundColor(.white)
            ))
        }
    }
}

struct MenuView: View {
    
    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .leading) {
                HStack(spacing: 25){
                    Text("Hi, UserName")
                        .font(.largeTitle)
                        .padding(.bottom, 10.0)
                        .padding(.leading, 15.0)
                    Text("Logout")
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                }
                .padding(.top, 50.0)
                Rectangle()
                    .fill(Color.gray)
                    .frame(width: geometry.size.width, height: 1)
                    .padding(.vertical, 10.0)
                HStack(spacing: 50){
                    Text("Đ 2,358.73")
                        .padding(.leading, 15.0)
                    Text("Transfer money")
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
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


struct MainView: View {
    @Binding var showHamburgerMenu: Bool
    @State private var isInvite = false
    @State private var isPayOrRequest = false
    
    var body: some View {
        WalletView()
    }
}


struct hamburgerMenuView_Previews: PreviewProvider {
    static var previews: some View {
        hamburgerMenuView()
    }
}
