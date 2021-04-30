//
//  NetworkManager.swift
//  Durocoin
//
//  Created by Logan Reynolds on 4/10/21.
//

import Foundation
import SwiftUI

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
                    let txs = try! JSONDecoder().decode([Tx].self, from: data!)
                    self.isLoading = false
                    self.txs = txs
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


