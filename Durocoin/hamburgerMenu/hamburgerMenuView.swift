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
        
//        let drag = DragGesture()
//            .onEnded {
//                if $0.translation.width < -100 {
//                    withAnimation {
//                        self.showHamburgerMenu = false
//                    }
//                }
//        }
                
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
//                    .gesture(drag)
            }
            .navigationBarItems(trailing: (
                Button(action: {
                    withAnimation {
                        self.showHamburgerMenu.toggle()
                    }
                }) {
                    
                    if !showHamburgerMenu{
                        Image(systemName: "line.horizontal.3")
                            .imageScale(.large)
                            .foregroundColor(.white)
                    }else{
                        Image(systemName: "line.horizontal.3")
                            .imageScale(.large)
                            .foregroundColor(.black)
                    }
                }
//                .foregroundColor(.white)
            ))
        }
    }
}


struct hamburgerMenuView_Previews: PreviewProvider {
    static var previews: some View {
        hamburgerMenuView()
    }
}
