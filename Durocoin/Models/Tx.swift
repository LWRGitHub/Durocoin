//
//  Tx.swift
//  Durocoin
//
//  Created by Logan Reynolds on 4/9/21.
//

// [
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
//      "id": 1,
//      "fullName": "Logan Reynolds"
//    },
//    "target": {
//      "id": 2,
//      "fullName": "User2"
//    },
//    "externalTarget": null,
//    "externalSource": null
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
//      "id": 2,
//      "fullName": "User2"
//    },
//    "target": {
//      "id": 1,
//      "fullName": "Logan Reynolds"
//    },
//    "externalTarget": null,
//    "externalSource": null
//  }
//]

import Foundation


///// Stores the original Tx
//struct Tx: Decodable {
//    private enum CodingKeys: String, CodingKey {
//        case id = "id"
//        case amountInDuros = "amountInDuros"
//        case amountInDollars = "amountInDollars"
//        case createdAt = "createdAt"
//        case msg = "msg"
//        case sourceName = "source.fullName"
////        case targetName = "target.fullName"
//    }
//
//    var id: Int?
//    var amountInDuros, amountInDollars: String?
//    var msg, sourceName: String?
//    var createdAt: String?
//}

// MARK: - WelcomeElement
struct Tx: Decodable {
    let amountInDuros, amountInDollars: String
    let id: String
    let msg: String
    let amountInCents: Int
    let createdAt, updatedAt: String
    let sourceID, targetID: String?
    let externalSourceId, externalTargetId: String?
    let source, target: Source?
    let externalTarget, externalSource: ExternalSource?


    enum CodingKeys: String, CodingKey {
        case amountInDuros, amountInDollars, id, msg, amountInCents, createdAt, updatedAt
        case sourceID = "sourceId"
        case targetID = "targetId"
        case source, target
        case externalSourceId, externalTargetId
        case externalTarget, externalSource
    }
}

// MARK: - Source
struct Source: Codable {
    let id: String
    let fullName: String
}

// MARK: - External Source
struct ExternalSource: Codable {
    let id: String
    let name: String
}
