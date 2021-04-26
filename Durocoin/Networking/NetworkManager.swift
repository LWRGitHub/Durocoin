//
//  NetworkManager.swift
//  Durocoin
//
//  Created by Logan Reynolds on 4/10/21.
//
//[
//  {
//    "amountInDuros": "2000.00",
//    "amountInDollars": "2400.00",
//    "id": "799bf1f2-ad96-4a93-8ca9-b44906d36c5b",
//    "msg": "1.00 DUR / 1.20 USD",
//    "amountInCents": 200000,
//    "createdAt": "2021-04-26T17:52:10.535Z",
//    "updatedAt": "2021-04-26T17:52:10.535Z",
//    "sourceId": null,
//    "targetId": "f6ae8b9a-020e-4a5a-95f9-d3d8ab7dc6bd",
//    "externalSourceId": "46ea0c2b-eba1-460d-9b6b-bd20489b22f1",
//    "externalTargetId": null,
//    "source": null,
//    "target": {
//      "id": "f6ae8b9a-020e-4a5a-95f9-d3d8ab7dc6bd",
//      "fullName": "Logan Reynolds"
//    },
//    "externalTarget": null,
//    "externalSource": {
//      "id": "46ea0c2b-eba1-460d-9b6b-bd20489b22f1",
//      "name": "laskdhgf"
//    }
//  }
//]

import Foundation
import SwiftUI
//let token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ImY2YWU4YjlhLTAyMGUtNGE1YS05NWY5LWQzZDhhYjdkYzZiZCIsImlhdCI6MTYxOTQ1OTY0MCwiZXhwIjoxNjI0NjQzNjQwfQ.M53BUljFZLvIQiJXtYfGsfiRS0pOEQQ4pIapfhnR9lE"

class NetworkManager: ObservableObject {
    
    @Published var txs: [Tx]?
    @Published var isLoading = false
    @AppStorage("token") var token: String?
    
    init() {
        getData()
    }
    
    func getData() {
        
        // Create a GET url request
        guard let url = URL(string: "https://duro-web.herokuapp.com/wallet") else { return }
        
        self.isLoading = true
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.setValue( "Bearer \(token!)", forHTTPHeaderField: "Authorization")
        
        self.isLoading = true
        
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let err = error {
                print("Error fetching from txAPI: ", err.localizedDescription)
                return
            }
            do {
                
                DispatchQueue.main.async {
                    print(self.token)
                    let str = String(data: data!, encoding: .utf8)
                    print(str)
//                    let txs = try! JSONDecoder().decode([Tx].self, from: data!)
//                    self.isLoading = false
//                    self.txs = txs
//                    print(self.txs)
                }
            }
        }.resume()
    }
    
    func getLogin(){
        guard let url = URL(string: "https://duro-web.herokuapp.com/api/sign-in") else { return }

        let parameters = [
            "email": "logan@email.com",
            "password": "123"
        ]
        
        guard let httpBodyData = try? JSONSerialization.data(withJSONObject: parameters, options: []) else{ return }
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = httpBodyData
        
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let err = error {
                print("Error fetching from txAPI: ", err.localizedDescription)
                return
            }
            do {
                let json = try JSONSerialization.jsonObject(with: data!, options: [])
                print(json)
            }catch {
                print(error)
            }
        }.resume()
    }
}


