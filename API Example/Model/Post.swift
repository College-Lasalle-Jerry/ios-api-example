//
//  Post.swift
//  API Example
//
//  Created by Jerry Joy on 2024-10-28.
//

import Foundation


struct Post: Identifiable, Codable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}


//{
//    "userId": 1,
//    "id": 1,
//    "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
//    "body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
//},
