//
//  Repos.swift
//  ViewCodeGITAPP
//
//  Created by Alexandre Aun on 24/10/19.
//  Copyright © 2019 AleAun. All rights reserved.
//

import Foundation


struct Repos: Codable {
    let total_count: Int
    let items: [Itens]
}

struct Itens: Codable {
    let id: Int
    let name: String
    let full_name: String
    let owner: Owner
    let description: String
    let fork: Bool
    let stargazers_count: Int
    let language: String
    let forks_count: Int
    
}

struct Owner: Codable {
    let login: String
    let avatar_url: String
    
}
