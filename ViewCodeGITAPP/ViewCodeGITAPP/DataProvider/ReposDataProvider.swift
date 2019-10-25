//
//  ReposDataProvider.swift
//  ViewCodeGITAPP
//
//  Created by Alexandre Aun on 24/10/19.
//  Copyright © 2019 AleAun. All rights reserved.
//

import Foundation

class ReposDataProvider{
    
    let apiManager = ApiManager()
    
    var arrayRepos: [Items] = []
    
    func getRepos(completion: @escaping (Bool) -> Void){
        
        apiManager.getAPI { (repos, success) in
            if success{
                guard let repo = repos else {return}
                self.arrayRepos = repo.items
                completion(true)
                return
            }else{
                completion(false)
                return
            }
        }
    }
    
    func numberofRows() -> Int{
       return arrayRepos.count
    }
    
    
    
}
