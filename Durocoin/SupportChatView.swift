//
//  SupportChatView.swift
//  Durocoin
//
//  Created by Logan Reynolds on 3/16/21.
//

import SwiftUI

struct SupportChatView: View {
    var body: some View {
        NavigationView {
            ZStack{
                Color.blue
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    Rectangle()
                        .fill(Color.white)
                        .frame(width: 400, height: 650)
                        .cornerRadius(10.0)
                    ZStack{
                        Rectangle()
                            .fill(Color.white)
                            .frame(width: 400, height: 50)
                            .cornerRadius(10.0)
                        Text("Write message...")     .frame(width: 220, height: 30)
                            .background(Color(red: 0.74, green: 0.9, blue: 1.0))
                    }
                }
            }
        }
        .navigationBarTitle("Support Chat")
    }
}

struct SupportChatView_Previews: PreviewProvider {
    static var previews: some View {
        SupportChatView()
    }
}
