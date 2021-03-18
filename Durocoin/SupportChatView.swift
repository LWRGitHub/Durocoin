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
                Rectangle()
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.09437356223, green: 0.775731039, blue: 1, alpha: 1)), .blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        )

                    .frame(width: 500, height: 900)
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    Rectangle()
                        .fill(Color.white)
                        .frame(width: 400, height: 500)
                        .cornerRadius(10.0)
                    ZStack{
                        Rectangle()
                            .fill(Color.white)
                            .frame(width: 400, height: 50)
                            .cornerRadius(10.0)
                        Text("Write message...")
                            .frame(width: 220, height: 30)
                            .background(Color(red: 0.8, green: 0.9, blue: 1.0))
                        HStack(spacing: 280){
                            Image(systemName:"square.and.arrow.up")
                                .font(.system(size: 28.0))
                            Image(systemName: "paperplane")
                                .font(.system(size: 28.0))
                        }
                    }
                }
            }
        }
    }
}

struct SupportChatView_Previews: PreviewProvider {
    static var previews: some View {
        SupportChatView()
    }
}
