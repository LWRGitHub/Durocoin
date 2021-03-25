//
//  hamburgerMenuView.swift
//  Durocoin
//
//  Created by Logan Reynolds on 3/16/21.
//

import SwiftUI

struct hamburgerMenuView: View {
    @State var showHamburgerMenu = false
    @State var show = false
    
    var body: some View {
        
//        let drag = DragGesture()
//            .onEnded {
//                if $0.translation.width < -100 {
//                    withAnimation {
//                        self.showHamburgerMenu = false
//                    }
//                }
//        }
                
        return NavigationView {
            GeometryReader { geometry in
                    ZStack(alignment: .trailing) {
                        
                        MainView(showHamburgerMenu: self.$showHamburgerMenu)
                            .frame(width: geometry.size.width, height: geometry.size.height)
                            .disabled(self.showHamburgerMenu ? true : false)
                        
                        
                        if self.showHamburgerMenu {
                            MenuView()
                                .frame(width: geometry.size.width/5*4)
                                .transition(.move(edge: .trailing))
    //                            .navigationBarHidden(true)
                        }
                    }
//                    .gesture(drag)
            }
            .navigationBarItems(trailing: (
                Button(action: {
                    withAnimation {
                        self.showHamburgerMenu.toggle()
                    }
                }) {
                    
                    if !showHamburgerMenu{
                        Image(systemName: "line.horizontal.3")
                            .imageScale(.large)
                            .foregroundColor(.white)
                    }else{
                        Image(systemName: "line.horizontal.3")
                            .imageScale(.large)
                            .foregroundColor(.black)
                    }
                }
//                .foregroundColor(.white)
            ))
        }
    }
}


struct MenuView: View {
    @State private var ShowLogout = false
    @State private var showingAlert = false
    @State private var isTransferMoney: Bool = false
    
    var body: some View {
        GeometryReader { geometry in
            HStack{
                VStack(alignment: .leading) {
                    HStack(spacing: 35){
                        Text("Hi, UserName")
                            .font(.largeTitle)
                            .padding(.bottom, 10.0)
                            .padding(.leading, 15.0)
                            .padding(.top, 50.0)
                        
                        Button("Logout") {
                            showingAlert.toggle()
                        }
                        .alert(isPresented: $showingAlert) {
                            Alert(title: Text("Logout"), message: Text("Are you sure, you want to logout?"), primaryButton: .default(Text("No")), secondaryButton: .default(Text("Yes")))
                        }
                        .padding(.bottom, 25.0)
                    }
                    Rectangle()
                        .fill(Color.gray)
                        .frame(width: geometry.size.width, height: 1)
                        .padding(.vertical, 10.0)
                    HStack(spacing: 50){
                        Text("Đ 2,358.73")
                            .padding(.leading, 15.0)
                        Text("Transfer money")
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            .sheet(isPresented: $isTransferMoney){
                                TransferMoney(isTransferMoney: $isTransferMoney)
                            }
                            .onTapGesture {
                                isTransferMoney.toggle()
                            }
                    }
                    Rectangle()
                        .fill(Color.gray)
                        .frame(width: geometry.size.width, height: 1)
                        .padding(.vertical, 10.0)
                    HStack {
                        Image(systemName: "creditcard")
                            .foregroundColor(.black)
                            .imageScale(.large)
                            .font(.headline)
                            .padding(.leading, 15.0)
                        NavigationLink(destination: WalletView()) {
                            Text("Wallet")
                                .foregroundColor(.black)
                        }
                    }
                    .padding(.top, 5)
                    HStack {
                        Image(systemName: "person.fill.questionmark")
                            .foregroundColor(.black)
                            .imageScale(.large)
                            .font(.headline)
                            .padding(.leading, 15.0)
                        NavigationLink(destination: SupportView()) {
                            Text("Support")
                                .foregroundColor(.black)
                        }
                    }
                    .padding(.top, 30)
                    HStack {
                        Image(systemName: "gear")
                            .foregroundColor(.black)
                            .imageScale(.large)
                            .font(.headline)
                            .padding(.leading, 15.0)
                        NavigationLink(destination: SettingsView()) {
                            Text("Settings")
                                .foregroundColor(.black)
                        }
                    }
                    .padding(.top, 30)
                    Spacer()
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                .edgesIgnoringSafeArea(.all)
                .shadow(radius: 7)
                
            }
        }
    }
}

struct LogoutView: View {
    @Binding var ShowLogout: Bool
    
    var body: some View {
        Rectangle()
            .fill(Color.red)
            .frame(width: 300, height: 350)
            .cornerRadius(10.0)
    }
}


struct MainView: View {
    @Binding var showHamburgerMenu: Bool
    @State private var isInvite = false
    @State private var isPayOrRequest = false
    
    var body: some View {
        WalletView()
    }
}

struct TransferMoney: View {
    @Binding var isTransferMoney: Bool
    @State private var isBizDays = false
    @State private var isInstant = false
    
    var body: some View {
        VStack{
            Rectangle()
                .fill(Color.black)
                .frame(width: 100, height: 5)
                .cornerRadius(2.0)
                .padding(.top, 6.0)
                .onTapGesture {
                    isTransferMoney.toggle()
            }
            Text("Transfer Money")
                .font(.title)
                .padding(.all, -1.0)
            Rectangle()
                .fill(Color.gray)
                .frame(width: 500, height: 1)
            Spacer()
            Spacer()
            VStack{
                HStack{
                    Text("Đ 0.00")
                        .font(.system(size: 40.0))
                        .padding(.leading, 6.0)
                    Image(systemName: "clear.fill")
                        .font(.system(size: 15.0))
                        .padding(.bottom, 15.0)
                        .foregroundColor(.gray)
                }
                Text("Transfer up to Đ 0.00")
                    .font(.system(size: 11.0))
                    .padding(.all, 2.0)
            }
            Spacer()
            Spacer()
            HStack(spacing: 40){
                VStack{
                    ZStack{
                        Circle()
                            .fill(
                                LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.09437356223, green: 0.775731039, blue: 1, alpha: 1)), .blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                )
                            .frame(width: 45, height: 45)
                        Image(systemName: "bolt.fill")
                            .padding(.all, 3.0)
                            .font(.system(size: 28.0))
                            .foregroundColor(.white)
                    }
                    Text("Instant")
                        .font(.system(size: 20.0))
                    Text("1% fee (max Đ10.00)")
                        .font(.system(size: 11.0))
                        .foregroundColor(.gray)
                }
                .padding(.all, 20.0)
                .overlay(
                            Capsule(style: .continuous)
                                .stroke(Color.gray, style: StrokeStyle(lineWidth: 1))
                        )
                .sheet(isPresented: $isInstant){
                    Instant(isInstant: $isInstant)
                }
                .onTapGesture {
                    isInstant.toggle()
                }
                VStack{
                    ZStack{
                        Circle()
                            .fill(
                                LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.09437356223, green: 0.775731039, blue: 1, alpha: 1)), .blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                )
                            .frame(width: 45, height: 45)
                        Image(systemName: "building.columns")
                            .padding(.all, 3.0)
                            .font(.system(size: 22.0))
                            .foregroundColor(.white)
                    }
                    Text("1-3 biz days")
                        .font(.system(size: 20.0))
                    Text("No fee")
                        .font(.system(size: 11.0))
                        .foregroundColor(.gray)
                }
                .padding(.all, 20.0)
                .overlay(
                            Capsule(style: .continuous)
                                .stroke(Color.gray, style: StrokeStyle(lineWidth: 1))
                        )
                .sheet(isPresented: $isBizDays){
                    BizDays(isBizDays: $isBizDays)
                }
                .onTapGesture {
                    isBizDays.toggle()
                }
            }
            Spacer()
        }
    }
}


struct Instant: View {
    @Binding var isInstant: Bool
    
    var body: some View {
        VStack{
            Rectangle()
                .fill(Color.black)
                .frame(width: 100, height: 5)
                .cornerRadius(2.0)
                .padding(.top, 6.0)
                .onTapGesture {
                    isInstant.toggle()
            }
            Text("Instant Transfer")
                .font(.title)
                .padding(.all, -1.0)
            Rectangle()
                .fill(Color.gray)
                .frame(width: 500, height: 1)
            Spacer()
            Rectangle()
                .fill(Color.gray)
                .frame(width: 500, height: 1)
            HStack(spacing: 20){
                Image(systemName: "building.columns")
                    .font(.system(size: 25.0))
                    .foregroundColor(Color(#colorLiteral(red: 0.09437356223, green: 0.775731039, blue: 1, alpha: 1)))
                VStack(alignment: .leading){
                    Text("Bank")
                    Text("For eligible banks.")
                        .foregroundColor(.gray)
                }
                .frame(width: 285, height: 65, alignment: .leading)
                Image(systemName: "arrow.right.circle.fill")
                    .font(.system(size: 25.0))
                    .foregroundColor(.gray)
            }
            .padding()
            Rectangle()
                .fill(Color.gray)
                .frame(width: 500, height: 1)
            HStack(spacing: 20){
                Image(systemName: "creditcard")
                    .font(.system(size: 25.0))
                    .foregroundColor(Color(#colorLiteral(red: 0.09437356223, green: 0.775731039, blue: 1, alpha: 1)))
                VStack(alignment: .leading){
                    Text("Debit Card")
                    Text("For eligible debit cards.")
                        .foregroundColor(.gray)
                }
                .frame(width: 285, height: 65, alignment: .leading)
                Image(systemName: "arrow.right.circle.fill")
                    .font(.system(size: 25.0))
                    .foregroundColor(.gray)
            }
            .padding()
            Rectangle()
                .fill(Color.gray)
                .frame(width: 500, height: 1)
            Spacer()
        }
    }
}

struct BizDays: View {
    @Binding var isBizDays: Bool
    
    var body: some View {
        VStack{
            Rectangle()
                .fill(Color.black)
                .frame(width: 100, height: 5)
                .cornerRadius(2.0)
                .padding(.top, 6.0)
                .onTapGesture {
                    isBizDays.toggle()
            }
            Text("Bank Verification")
                .font(.title)
                .padding(.all, -1.0)
            Rectangle()
                .fill(Color.gray)
                .frame(width: 500, height: 1)
            Spacer()
            Rectangle()
                .fill(Color.gray)
                .frame(width: 500, height: 1)
            HStack(spacing: 20){
                Image(systemName: "doc.text.magnifyingglass")
                    .font(.system(size: 25.0))
                    .foregroundColor(Color(#colorLiteral(red: 0.09437356223, green: 0.775731039, blue: 1, alpha: 1)))
                VStack(alignment: .leading){
                    Text("Instant Verification")
                    Text("Sign in to your bank to instantly verify your bank account.")
                        .foregroundColor(.gray)
                }
                .frame(width: 285, height: 65)
                Image(systemName: "arrow.right.circle.fill")
                    .font(.system(size: 25.0))
                    .foregroundColor(.gray)
            }
            .padding()
            Rectangle()
                .fill(Color.gray)
                .frame(width: 500, height: 1)
            HStack(spacing: 20){
                Image(systemName: "doc.text.magnifyingglass")
                    .font(.system(size: 25.0))
                    .foregroundColor(Color(#colorLiteral(red: 0.09437356223, green: 0.775731039, blue: 1, alpha: 1)))
                VStack(alignment: .leading){
                    Text("Manual Verification")
                    Text("Use your bank's account & routing number. Takes up to 3 business days.")
                        .foregroundColor(.gray)
                }
                .frame(width: 285, height: 65)
                Image(systemName: "arrow.right.circle.fill")
                    .font(.system(size: 25.0))
                    .foregroundColor(.gray)
            }
            .padding()
            Rectangle()
                .fill(Color.gray)
                .frame(width: 500, height: 1)
            Spacer()
        }
    }
}


struct hamburgerMenuView_Previews: PreviewProvider {
    static var previews: some View {
        hamburgerMenuView()
    }
}
