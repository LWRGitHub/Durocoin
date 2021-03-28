//
//  LoginView.swift
//  Durocoin
//
//  Created by Logan Reynolds on 3/27/21.
//

import SwiftUI

struct LoginView: View {
    @State var email: String = ""
    @State var password: String = ""
//    @Binding var isNotLoggedIn: Bool
//    @State var ShowLogout: Bool

    var body: some View {
        
        NavigationView {
            
                VStack {
                    Text("Login")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        
                    Spacer()
                    Text("Dont have a wallet yet?")
                        .padding(.bottom, 15)
                    Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Sign Up")
                            .font(.headline)
                            .fontWeight(.bold)
                    }
                    .padding()
                    .frame(width: 300, height: 50)
                    .border(Color.gray, width: 1)
                    .accentColor(.black)


                    TextField("Email", text: $email)
                        .padding(30)

                    TextField("Password", text: $password)
                        .padding(30)

                    NavigationLink(destination: ContentView()) {
                        Text("Login")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(
                                LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.09437356223, green: 0.775731039, blue: 1, alpha: 1)), .blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                )
                            .cornerRadius(10.0)
                    }
                    Spacer()
                    Spacer()

                }
                .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
        }
        .frame(width: UIScreen.main.bounds.width, alignment: .center)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
