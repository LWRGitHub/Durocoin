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
                    ZStack{
                        Path { path in
                            path.move(to: CGPoint( x:20, y:0 ))
                            path.addLine(to: CGPoint( x:20, y:300))
                            path.addLine(to: CGPoint(x: 300, y: 300))
                            path.addLine(to: CGPoint(x: 300, y:0))
                        }
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
