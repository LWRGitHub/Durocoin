//
//  ContentView.swift
//  Durocoin
//
//  Created by Logan Reynolds on 3/15/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            hamburgerMenuView()
        }
    }
    
    init() {
        let navBarAppearance = UINavigationBar.appearance()
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
