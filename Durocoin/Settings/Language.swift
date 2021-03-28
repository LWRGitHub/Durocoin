//
//  Language.swift
//  Durocoin
//
//  Created by Logan Reynolds on 3/27/21.
//

import SwiftUI

struct Language: View {
    @Binding var isLanguage: Bool
    
    var body: some View {
        VStack{
            Rectangle()
                .fill(Color.black)
                .frame(width: 100, height: 5)
                .cornerRadius(2.0)
                .padding(.top, 6.0)
                .onTapGesture {
                    isLanguage.toggle()
                }
            Spacer()
            Text("Language")
                .font(.headline)
                .padding()
            Picker(selection: .constant(1), label: Text("Language")) {
                Text("English").tag(1)
                Text("Spanish").tag(2)
                Text("French").tag(2)
                Text("Rushan").tag(1)
                Text("German").tag(2)
                Text("Austrian").tag(2)
                Text("Dutch").tag(2)
            }
            Spacer()
            Text("Save")
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

//struct Language_Previews: PreviewProvider {
//    static var previews: some View {
//        Language()
//    }
//}
