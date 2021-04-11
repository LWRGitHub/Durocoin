//
//  User.swift
//  Durocoin
//
//  Created by Logan Reynolds on 4/9/21.
//

import Foundation

/// Array of User objects.
struct UserArray: Decodable {
    private enum CodingKeys : String, CodingKey { case users = "users" }
    let users: [User]
}

/// Stores the original User
struct User: Decodable {
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case fullName = "fullName"
        case email = "email"
        case balanceInDuros = "balanceInDuros"
        case balanceInDollars = "balanceInDollars"
    }
    
    var id: Int?
    var balanceInDuros, balanceInDollars: Double?
    var fullName, email: String?
}
