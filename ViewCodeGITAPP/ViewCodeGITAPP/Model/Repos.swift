//
//  Repos.swift
//  ViewCodeGITAPP
//
//  Created by Alexandre Aun on 24/10/19.
//  Copyright © 2019 AleAun. All rights reserved.
//

import Foundation


struct Repos: Codable {
    let totalCount: Int
    let items: [Items]
}

struct Items: Codable {
    let id: Int
    let name: String
    let fullName: String
    let owner: Owner
    let description: String
    let fork: Bool
    let stargazersCount: Int
    let language: String
    let forksCount: Int
    let watchers: Int

}

struct Owner: Codable {
    let login: String
    let id: Int
    let avatarUrl: String
    let reposUrl: String
    
}

