//
//  hamburgerMenuView.swift
//  Durocoin
//
//  Created by Logan Reynolds on 3/16/21.
//

import SwiftUI

struct hamburgerMenuView: View {
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
                ZStack(alignment: .trailing) {
                    MainView(showHamburgerMenu: self.$showHamburgerMenu)
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .offset(x: self.showHamburgerMenu ? geometry.size.width/2 : 0)
                        .disabled(self.showHamburgerMenu ? true : false)
                    
                    if self.showHamburgerMenu {
                        MenuView()
                            .frame(width: geometry.size.width/2)
                            .transition(.move(edge: .trailing))
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
                }.foregroundColor(.gray)
            ))
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
