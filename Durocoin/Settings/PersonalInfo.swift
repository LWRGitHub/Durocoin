//
//  PersonalInfo.swift
//  Durocoin
//
//  Created by Logan Reynolds on 3/27/21.
//

import SwiftUI

struct PersonalInfo: View {
    @Binding var isPersonalInfo: Bool
    
    @State var name: String = "Some Name"
    @State var email: String = "SomeEmail@email.com"
    @State var phone: String = "(555) 555-5555"
    @State var street: String = "555 SomeThing St."
    @State var city: String = "San Francisco"
    @State var state: String = "CA"
    @State var contry: String = "USA"
    @State var zip: String = "94102"
    @State var curentPassword: String = "*******"
    @State var newPassword1: String = ""
    @State var newPassword2: String = ""
    
    @State var sameAdress: Bool = true
    @State var homeStreet: String = "555 SomeThing St."
    @State var homeCity: String = "San Francisco"
    @State var homeState: String = "CA"
    @State var homeContry: String = "USA"
    @State var homeZip: String = "94102"
    
    var body: some View {
        VStack{
            Rectangle()
                .fill(Color.black)
                .frame(width: 100, height: 5)
                .cornerRadius(2.0)
                .padding(.top, 6.0)
                .onTapGesture {
                    isPersonalInfo.toggle()
                }
            Spacer()
            Form {
                Section(header: Text("Name")) {
                    TextField(name, text: $name)
                    
                }
                Section(header: Text("Email")) {
                    TextField(email, text: $email)
                    
                }
                Section(header: Text("Phone")) {
                    TextField(phone, text: $phone)
                    
                }
                Toggle(isOn: $sameAdress) {
                    Text("Mailing address same as home address.")
                }
                
                if sameAdress {
                    Section(header: Text("Address")) {
                        TextField(street, text: $street)
                        HStack{
                            TextField(city, text: $city)
                            TextField(state, text: $state)
                        }
                        HStack{
                            TextField(contry, text: $contry)
                            TextField(zip, text: $zip)
                        }
                    }
                } else {
                    Section(header: Text("Home Address")) {
                        TextField(homeStreet, text: $homeStreet)
                        HStack{
                            TextField(homeCity, text: $homeCity)
                            TextField(homeState, text: $homeState)
                        }
                        HStack{
                            TextField(homeContry, text: $homeContry)
                            TextField(homeZip, text: $homeZip)
                        }
                    }
                    Section(header: Text("Mailing Address")) {
                        TextField(street, text: $street)
                        HStack{
                            TextField(city, text: $city)
                            TextField(state, text: $state)
                        }
                        HStack{
                            TextField(contry, text: $contry)
                            TextField(zip, text: $zip)
                        }
                    }
                }
                
                Section(header: Text("Curent Password")) {
                    TextField(" ", text: $curentPassword)
                }
                Section(header: Text("New Password")) {
                    TextField("", text: $newPassword1)
                    TextField("", text: $newPassword2)
                }
                
            }
            .background(Color.white)
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

//struct PersonalInfo_Previews: PreviewProvider {
//    static var previews: some View {
//        PersonalInfo()
//    }
//}
