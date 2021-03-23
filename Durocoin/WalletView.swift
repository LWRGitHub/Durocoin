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
    @State var duroBalance: Double = 2350.03
    @State var showHamburgerMenu: Bool = false
    @State private var showingAlert = false
    
    var body: some View {
        NavigationView {
            ZStack{
                Rectangle()
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.09437356223, green: 0.775731039, blue: 1, alpha: 1)), .blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        )

                    .frame(width: 500, height: 900)
                    .edgesIgnoringSafeArea(.all)
                
                
            
                VStack(spacing: 0){
                    
                    ZStack{
                        ZStack(alignment: .bottomTrailing) {
                            Rectangle()
                                .frame(width: 325, height: 150)
                                .foregroundColor(.white)
                                .cornerRadius(10.0)
                            Text("USD \(String(duroBalance*1.2))")
                                .font(.body)
                                .fontWeight(.regular)
                                .padding()
                                .foregroundColor(.gray)
                        }
                        Text("Đ \(String(duroBalance))")
                            .font(.largeTitle)
                    }
                    .padding(.bottom, 20.0)
                    
                        ZStack{
//                            Rectangle()
//                                .fill(Color(red: 0.9, green: 0.9, blue: 0.9, opacity: 1.0))
//                                .frame(width: 500, height: 400)
                            VStack(spacing: 0){
                                ZStack{
                                    Rectangle()
                                        .fill(Color.white)
                                        .frame(width: 500, height: 99)
                                        .padding(0)
                                    VStack{
                                        HStack(spacing: 270){
                                            ZStack{
                                                VStack{
                                                    Text("Lyft")
                                                }
                                            }
                                            ZStack{
                                                VStack{
                                                    Text("Đ 10.85")
                                                        .foregroundColor(.red)
                                                    Text("USD $12.99")
                                                        .foregroundColor(.gray)
                                                        .font(.system(size: 10))
                                                }
                                            }
                                        }
                                        HStack{
                                            Text("6:00 pm Monday, March 15 2021")
                                                .padding(.trailing, 130.0)
                                                .font(.system(size: 15))
                                                .foregroundColor(.gray)
                                        }
                                    }
                                        
                                }
                                Rectangle()
                                    .fill(Color.gray)
                                    .frame(width: 500, height: 1)
                                ZStack{
                                    Rectangle()
                                        .fill(Color.white)
                                        .frame(width: 500, height: 99)
                                    VStack{
                                        HStack(spacing: 210){
                                            ZStack{
                                                VStack{
                                                    Text("Chase Bank")
                                                }
                                            }
                                            ZStack{
                                                VStack{
                                                    Text("Đ 10.85")
                                                        .foregroundColor(.green)
                                                    Text("USD $12.99")
                                                        .foregroundColor(.gray)
                                                        .font(.system(size: 10))
                                                }
                                            }
                                        }
                                        HStack{
                                            Text("6:00 pm Monday, March 15 2021")
                                                .padding(.trailing, 130.0)
                                                .font(.system(size: 15))
                                                .foregroundColor(.gray)
                                        }
                                    }
                                        
                                }
                                Rectangle()
                                    .fill(Color.gray)
                                    .frame(width: 500, height: 1)
                                ZStack{
                                    Rectangle()
                                        .fill(Color.white)
                                        .frame(width: 500, height: 99)
                                    VStack{
                                        HStack(spacing: 200){
                                            ZStack{
                                                VStack{
                                                    Text("Whole Foods")
                                                }
                                            }
                                            ZStack{
                                                VStack{
                                                    Text("Đ 10.85")
                                                        .foregroundColor(.red)
                                                    Text("USD $12.99")
                                                        .foregroundColor(.gray)
                                                        .font(.system(size: 10))
                                                }
                                            }
                                        }
                                        HStack{
                                            Text("6:00 pm Monday, March 15 2021")
                                                .padding(.trailing, 130.0)
                                                .font(.system(size: 15))
                                                .foregroundColor(.gray)
                                        }
                                    }
                                        
                                }
                                Rectangle()
                                    .fill(Color.gray)
                                    .frame(width: 500, height: 1)
                                ZStack{
                                    Rectangle()
                                        .fill(Color.white)
                                        .frame(width: 500, height: 99)
                                    VStack{
                                        HStack(spacing: 176){
                                            ZStack{
                                                VStack{
                                                    Text("Bitcoin Wallet")
                                                }
                                            }
                                            ZStack{
                                                VStack{
                                                    Text("Đ 1005.85")
                                                        .foregroundColor(.green)
                                                    Text("USD $1248.99")
                                                        .foregroundColor(.gray)
                                                        .font(.system(size: 10))
                                                }
                                            }
                                        }
                                        HStack{
                                            Text("6:00 pm Monday, March 15 2021")
                                                .padding(.trailing, 130.0)
                                                .font(.system(size: 15))
                                                .foregroundColor(.gray)
                                        }
                                    }    
                                }
                                Rectangle()
                                    .fill(Color.gray)
                                    .frame(width: 500, height: 1)
                            }
                        }
//                    }
                    
                    HStack(spacing: 20){
                        
                        Text("Invite")
                            .font(.headline)
                            .padding()
                            .frame(width: 120, height: 50)
                            .background(Color.white)
                            
                            .overlay(
                                        Capsule(style: .continuous)
                                            .stroke(Color.gray, style: StrokeStyle(lineWidth: 1))
                                    )
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
                            .cornerRadius(21.0)
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
        }.navigationBarTitle("Wallet")
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
