//
//  PostData.swift
//  H4XOR News
//
//  Created by Mohammed Irshad on 2024-05-15.
//

import Foundation

struct PostData: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
