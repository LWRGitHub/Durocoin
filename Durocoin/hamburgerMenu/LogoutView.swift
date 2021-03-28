//
//  LogoutView.swift
//  Durocoin
//
//  Created by Logan Reynolds on 3/27/21.
//

import SwiftUI

struct LogoutView: View {
    @Binding var ShowLogout: Bool
    
    var body: some View {
        Rectangle()
            .fill(Color.red)
            .frame(width: 300, height: 350)
            .cornerRadius(10.0)
    }
}

//struct LogoutView_Previews: PreviewProvider {
//    static var previews: some View {
//        LogoutView()
//    }
//}
