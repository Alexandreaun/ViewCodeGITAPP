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
    
    var arrayRepos: [Itens] = []
    
    func getRepos(completion: @escaping (Error?) -> Void){
        
        apiManager.getAPI { (repos, error) in
            if error == nil{
                guard let repo = repos else {return}
                self.arrayRepos = repo.items
                completion(nil)
                return
            }else{
                completion(NSError())
                return
            }
        }
    }
    
    func numberofRows() -> Int{
       return arrayRepos.count
    }
    
    
    
}
