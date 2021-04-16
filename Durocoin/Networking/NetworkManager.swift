//
//  NetworkManager.swift
//  Durocoin
//
//  Created by Logan Reynolds on 4/10/21.
//

import Foundation

let token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNjE4MDg0MTYzLCJleHAiOjE2MjMyNjgxNjN9.t7EL4zBs9IlNoeQnRCyGAjpWYtPNGTdNiSrnfw836TE"

class NetworkManager: ObservableObject {
//    static func getArticles(completion:((_ json: Data?) -> Void)) {
//        completion(Data(articles.utf8))
//    }
    
    @Published var txs: [Tx]?
    @Published var isLoading = false
    
    init() {
        getData()
    }
    
    func getData() {
        // Create a GET url request
        guard let url = URL(string: "http://localhost:3000/wallet") else { return }
        
        self.isLoading = true
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.setValue( "Bearer \(token)", forHTTPHeaderField: "Authorization")
        
        self.isLoading = true
        
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let err = error {
                print("Error fetching from txAPI: ", err.localizedDescription)
                return
            }
            do {
//                guard let data = data, error == nil else { return }
//
//                   do {
//                       let json = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as! [[String:Any]]
//                       //let posts = json["posts"] as? [[String: Any]] ?? []
//                       print(json)
//                   } catch let error as NSError {
//                       print(error)
//                   }
                
                DispatchQueue.main.async {
                    let txs = try! JSONDecoder().decode([Tx].self, from: data!)
                    self.isLoading = false
                    self.txs = txs
                    
                }
            }
        }.resume()
    }
}


//static func fetchTxs(completion: @escaping (_ response: TxArray?) -> Void) {
//    // Create a GET url request
//    let url = URL(string: "http://localhost:3000/wallet")!
//    var request = URLRequest(url: url)
//    request.httpMethod = "GET"
//    request.addValue("application/json", forHTTPHeaderField: "Content-Type")
//    request.setValue( "Bearer \(token)", forHTTPHeaderField: "Authorization")
//
//    self.isLoading = true
//
//    URLSession.shared.dataTask(with: request) { (data, response, error) in
//        if let err = error {
//            print("Error fetching from txAPI: ", err.localizedDescription)
//        }
//        do {
//            DispatchQueue.main.async {
//                let txs = try! JSONDecoder().decode(TxArray.self, from: data!)
//                self.isLoading = false
//                self.txs = txs
//
//                completion(txs)
//            }
//        }
//    }.resume()
//}
