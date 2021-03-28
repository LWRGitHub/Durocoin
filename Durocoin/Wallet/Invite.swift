//
//  Invite.swift
//  Durocoin
//
//  Created by Logan Reynolds on 3/27/21.
//

import SwiftUI

struct Invite: View {
    @Binding var isInvite: Bool
    @State var emailInvite: Bool = true
    @State var inviteeEmail: String = ""
    @State var textInvite: Bool = true
    @State var textNumber: String = ""
    
    var body: some View {
        VStack{
            Rectangle()
                .fill(Color.black)
                .frame(width: 100, height: 5)
                .cornerRadius(2.0)
                .padding(.top, 6.0)
                .onTapGesture {
                    isInvite.toggle()
                }
            Spacer()
            Form{
                Toggle(isOn: $emailInvite) {
                    Text("Invite through email.")
                }
                Toggle(isOn: $textInvite) {
                    Text("Invite through text.")
                }
                if emailInvite{
                    Section(header: Text("Email")) {
                        TextField("SomeEmail@email.com", text: $inviteeEmail)
                    }
                }
                if textInvite{
                    Section(header: Text("Number")) {
                        TextField("(555) 555-5555", text: $textNumber)
                    }
                }
            }
            Text("Invite")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: 300, height: 50)
                .background(
                    LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.09437356223, green: 0.775731039, blue: 1, alpha: 1)), .blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                .cornerRadius(10.0)
        }
        .frame(width: UIScreen.main.bounds.width, alignment: .center)
    }
}


