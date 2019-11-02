//
//  ReposURL.swift
//  ViewCodeGITAPP
//
//  Created by Alexandre Aun on 28/10/19.
//  Copyright © 2019 AleAun. All rights reserved.
//

import Foundation

struct ReposList: Codable {
    let id: Int
    let name: String
    let fullName: String
    let owner: Owner
    let description: String
    let stargazersCount: Int
    let forksCount: Int
}
