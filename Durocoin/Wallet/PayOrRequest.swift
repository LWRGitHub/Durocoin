//
//  PayOrRequest.swift
//  Durocoin
//
//  Created by Logan Reynolds on 3/27/21.
//

import SwiftUI

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
                            Image("Đurocoin")
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
        .frame(width: UIScreen.main.bounds.width, alignment: .center)
    }
}

//struct PayOrRequest_Previews: PreviewProvider {
//    static var previews: some View {
//        PayOrRequest()
//    }
//}
