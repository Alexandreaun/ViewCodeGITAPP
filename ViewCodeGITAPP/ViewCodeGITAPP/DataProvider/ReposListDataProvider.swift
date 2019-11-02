//
//  ReposListDataProvider.swift
//  ViewCodeGITAPP
//
//  Created by Alexandre Aun on 30/10/19.
//  Copyright © 2019 AleAun. All rights reserved.
//

import Foundation

class ReposListDataProvider{
    
    let api = ApiManagerRL()
    var arrayReposListUser: [ReposList] = []
    var login: String?

    func loadReposList(completion: @escaping (Bool) -> Void){

        guard let logIn = login else {return}
        
        api.getAPIReposList(login: logIn) { (reposList, success) in
            if success{
                guard let repoList = reposList else {return}
                self.arrayReposListUser = repoList
                completion(true)
                return
            }else{
                
                completion(false)
                print("Problemas ao carregar os Repositorios deste usuário")
                return
            }
            
            
        }
        
    }
    
    func numberOfRows() -> Int{
        
        return arrayReposListUser.count
        
    }
    
    
   
}
