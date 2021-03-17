//
//  SupportView.swift
//  Durocoin
//
//  Created by Logan Reynolds on 3/16/21.
//

import SwiftUI

struct SupportView: View {
    
    
    var body: some View {
        NavigationView {
            ZStack{
                Color.blue                  .edgesIgnoringSafeArea(.all)
                VStack{
    //                Color.blue
    //                    .ignoresSafeArea()
                    Spacer()
                    NavigationLink(destination: PayOrRequestView()) {
                        Text("Pay or Request")
                            .font(.headline)
                            .foregroundColor(.black)
                            .padding()
                            .frame(width: 220, height: 50)
                            .background(Color.white)
                            .cornerRadius(10.0)
                    }
                    NavigationLink(destination: PayOrRequestView()) {
                        Text("Pay or Request")
                            .font(.headline)
                            .foregroundColor(.black)
                            .padding()
                            .frame(width: 220, height: 50)
                            .background(Color.white)
                            .cornerRadius(10.0)
                    }
                    NavigationLink(destination: PayOrRequestView()) {
                        Text("Pay or Request")
                            .font(.headline)
                            .foregroundColor(.black)
                            .padding()
                            .frame(width: 220, height: 50)
                            .background(Color.white)
                            .cornerRadius(10.0)
                    }
                    Spacer()
                    Spacer()
                    NavigationLink(destination: SupportChatView()) {
                        Text("Start a Support Chat")
                            .font(.headline)
                            .foregroundColor(.black)
                            .padding()
                            .frame(width: 220, height: 50)
                            .background(Color.white)
                            .cornerRadius(10.0)
                    }
                    Spacer()
                }
                
            }
            .navigationBarTitle("Support")
            .background(Color.blue.edgesIgnoringSafeArea(.all))
        }
    }
}

struct SupportView_Previews: PreviewProvider {
    static var previews: some View {
        SupportView()
    }
}
