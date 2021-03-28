//
//  MainView.swift
//  Durocoin
//
//  Created by Logan Reynolds on 3/27/21.
//

import SwiftUI

struct MainView: View {
    @Binding var showHamburgerMenu: Bool
    @State private var isInvite = false
    @State private var isPayOrRequest = false
    
    var body: some View {
        WalletView()
    }
}

//struct MainView_Previews: PreviewProvider {
//    static var previews: some View {
//        MainView()
//    }
//}
