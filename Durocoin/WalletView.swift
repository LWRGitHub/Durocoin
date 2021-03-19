//
//  WalletView.swift
//  Durocoin
//
//  Created by Logan Reynolds on 3/15/21.
//

import SwiftUI

struct WalletView: View {
    @State private var isInvite = false
    @State private var isPayOrRequest = false
    
    
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
                    Text("Đ 2,350.03")
                        .font(.largeTitle)
                        .frame(width: 325, height: 150)
                        .background(Color.white)
                        .cornerRadius(10.0)
                    Text("Recent Activity")
                        .fontWeight(.bold)
                        .padding(.top, 10.0)
                        .frame(width: 325, height: 20, alignment: .topLeading)
                        .foregroundColor(.white)
                    
                    ZStack{
                        Rectangle()
                            .fill(Color(red: 0.9, green: 0.9, blue: 0.9, opacity: 1.0))
                            .frame(width: 500, height: 400)
                        VStack{
                            Rectangle()
                                .fill(Color.white)
                                .frame(width: 500, height: 99)
                            Rectangle()
                                .fill(Color.white)
                                .frame(width: 500, height: 99)
                            Rectangle()
                                .fill(Color.white)
                                .frame(width: 500, height: 99)
                            Rectangle()
                                .fill(Color.white)
                                .frame(width: 500, height: 99)
                        }
                    }
                    
                    HStack(spacing: 20){
                        
                        Text("Invite")
                            .font(.headline)
                            .padding()
                            .frame(width: 120, height: 50)
                            .cornerRadius(10.0)
                            .border(Color.gray, width: 1)
                            .accentColor(.black)
                            .sheet(isPresented: $isInvite){
                                Invite(isInvite: $isInvite)
                            }
                            .onTapGesture {
                                isInvite.toggle()
                            }
                        
                        
                    
                        Text("Pay or Request")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 220, height: 50)
                            .background(
                                LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.09437356223, green: 0.775731039, blue: 1, alpha: 1)), .blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                )
                            .cornerRadius(10.0)
                            .sheet(isPresented: $isPayOrRequest){
                                PayOrRequest(isPayOrRequest: $isPayOrRequest)
                            }
                            .onTapGesture {
                                isPayOrRequest.toggle()
                            }
                            
                        
                    }
                    .padding(0.0)
                    .frame(width: 700, height: 70)
                    .background(Color.white.edgesIgnoringSafeArea(.all))
                }
            }
        }
        .navigationBarTitle("Wallet")
    }
}

struct Invite: View {
    @Binding var isInvite: Bool
    @State var emailInvite: Bool = true
    @State var inviteeEmail: String = ""
    @State var textInvite: Bool = true
    @State var textNumber: String = ""
    
    var body: some View {
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
}

struct PayOrRequest: View {
    @Binding var isPayOrRequest: Bool
    
    @State var pay: Bool = false
    @State var request: Bool = false
    
    @State var payUsingQR: Bool = false
    @State var requestUsingQR: Bool = false
    
    @State var payUsingNumber: Bool = false
    @State var number: String = ""
    @State var amount: String = ""
    
    @State var payUsingEmail: Bool = false
    @State var email: String = ""
    
    @State var requestUsingNumber: Bool = false
    @State var requestUsingEmail: Bool = false
    
//    @State var order: [String: String] = [:]
    
    var body: some View {
        VStack{
            Rectangle()
                .fill(Color.black)
                .frame(width: 100, height: 5)
                .cornerRadius(2.0)
                .padding(.top, 6.0)
                .onTapGesture {
                    isPayOrRequest.toggle()
                }
            Spacer()
            Form{
                Toggle(isOn: $pay) {
                    Text("Pay")
    //                $request = false
                }
                 Toggle(isOn: $request) {
                    Text("Request")
                }
                
    //            Picker(selection: $order.avocadoStyle, label: Text("Avocado:")) {
    //                Text("Sliced").tag(AvocadoStyle.sliced)
    //                Text("Mashed").tag(AvocadoStyle.mashed)
    //            }.pickerStyle(RadioGroupPickerStyle())
                
                if pay{
                    Section(header: Text("Pay")) {
                        Toggle(isOn: $payUsingQR) {
                            Text("Pay with QR Code")
                        }
                        if payUsingQR{
                            Image("Durocoin")
                                .resizable()
                                .frame(width: 300.0, height: 300.0)
                                .padding()
                        }
                        Toggle(isOn: $payUsingNumber) {
                            Text("Pay Using Number")
                        }
                        if payUsingNumber {
                            TextField("(555) 555-5555", text: $number)
                            TextField("$0.00", text: $amount)
                        
                        }
                        Toggle(isOn: $payUsingEmail) {
                            Text("Pay Using Email")
                        }
                        if payUsingEmail {
                            TextField("SomeEmail@emai.com", text: $email)
                            TextField("$0.00", text: $amount)
                        
                        }
                    }
                }
                
                if request{
                    Section(header: Text("Request")) {
                        Toggle(isOn: $requestUsingQR) {
                            Text("Request Using QR Code Scaner")
                        }
                        Toggle(isOn: $requestUsingNumber) {
                            Text("Request Using Number")
                        }
                        if requestUsingNumber {
                            TextField("(555) 555-5555", text: $number)
                            TextField("$0.00", text: $amount)
                        
                        }
                        Toggle(isOn: $requestUsingEmail) {
                            Text("Request Using Email")
                        }
                        if requestUsingEmail {
                            TextField("SomeEmail@emai.com", text: $email)
                            TextField("$0.00", text: $amount)
                        
                        }
                    }
                }
            }
            
            Spacer()
            
            if pay{
                Text("Pay")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(
                        LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.09437356223, green: 0.775731039, blue: 1, alpha: 1)), .blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        )
                    .cornerRadius(10.0)
            } else if request{
                Text("Request")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(
                        LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.09437356223, green: 0.775731039, blue: 1, alpha: 1)), .blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        )
                    .cornerRadius(10.0)
            }
        
        }
    }
}

struct WalletView_Previews: PreviewProvider {
    static var previews: some View {
        WalletView()
    }
}
