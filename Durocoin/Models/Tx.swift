//
//  Tx.swift
//  Durocoin
//
//  Created by Logan Reynolds on 4/9/21.
//

//[
//  {
//    "amountInDuros": "400.00",
//    "amountInDollars": "480.00",
//    "id": 2,
//    "msg": "hahaha you sent more !!!!!!!!",
//    "amountInCents": 40000,
//    "createdAt": "2021-04-10T19:49:51.073Z",
//    "updatedAt": "2021-04-10T19:49:51.073Z",
//    "sourceId": 1,
//    "targetId": 2,
//    "externalSourceId": null,
//    "externalTargetId": null,
//    "source": {
//      "balanceInDuros": "10200.00",
//      "id": 1,
//      "fullName": "Logan Reynolds",
//      "email": "logan@email.com",
//      "password": "$2b$10$N40Q.b2d07h5FvlHstqJ0.JZOoDyiDsibuEXOeKoIZo1SU2VtGioe",
//      "balanceInCents": 1020000,
//      "createdAt": "2021-04-10T19:44:39.368Z",
//      "updatedAt": "2021-04-10T19:49:51.077Z"
//    },
//    "target": {
//      "balanceInDuros": "9800.00",
//      "id": 2,
//      "fullName": "User2",
//      "email": "user2@email.com",
//      "password": "$2b$10$dwqJl7RY/Lxzj2///QQX8uvepvm0/MdPqABXAPrDwJ18HIW8ng7C2",
//      "balanceInCents": 980000,
//      "createdAt": "2021-04-10T19:46:24.680Z",
//      "updatedAt": "2021-04-10T19:49:51.077Z"
//    },
//    "externalSource": null,
//    "externalTarget": null
//  },
//  {
//    "amountInDuros": "600.00",
//    "amountInDollars": "720.00",
//    "id": 1,
//    "msg": "give me money!",
//    "amountInCents": 60000,
//    "createdAt": "2021-04-10T19:48:57.341Z",
//    "updatedAt": "2021-04-10T19:48:57.341Z",
//    "sourceId": 2,
//    "targetId": 1,
//    "externalSourceId": null,
//    "externalTargetId": null,
//    "source": {
//      "balanceInDuros": "9800.00",
//      "id": 2,
//      "fullName": "User2",
//      "email": "user2@email.com",
//      "password": "$2b$10$dwqJl7RY/Lxzj2///QQX8uvepvm0/MdPqABXAPrDwJ18HIW8ng7C2",
//      "balanceInCents": 980000,
//      "createdAt": "2021-04-10T19:46:24.680Z",
//      "updatedAt": "2021-04-10T19:49:51.077Z"
//    },
//    "target": {
//      "balanceInDuros": "10200.00",
//      "id": 1,
//      "fullName": "Logan Reynolds",
//      "email": "logan@email.com",
//      "password": "$2b$10$N40Q.b2d07h5FvlHstqJ0.JZOoDyiDsibuEXOeKoIZo1SU2VtGioe",
//      "balanceInCents": 1020000,
//      "createdAt": "2021-04-10T19:44:39.368Z",
//      "updatedAt": "2021-04-10T19:49:51.077Z"
//    },
//    "externalSource": null,
//    "externalTarget": null
//  }
//]

import Foundation

/// Array of Tx objects.
struct TxArray: Decodable {
    private enum CodingKeys : String, CodingKey { case txs = "txs" }
    let txs: [Tx]
}

/// Stores the original Tx
struct Tx: Decodable {
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case amountInDuros = "amountInDuros"
        case amountInDollars = "amountInDollars"
        case createdAt = "createdAt"
        case msg = "msg"
    }
    
    var id: Int?
    var amountInDuros, amountInDollars: Double?
    var msg: String?
    var createdAt: Date?
}
