//
//  DurocoinApp.swift
//  Durocoin
//
//  Created by Logan Reynolds on 3/15/21.
//

import SwiftUI

@main
struct DurocoinApp: App {
    @AppStorage("token") var token: String?

    var body: some Scene {
        WindowGroup {
            if token != nil {
                ContentView()
            } else {
                LoginView()
            }
        }
    }
}
