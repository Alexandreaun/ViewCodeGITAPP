//
//  ApiManager.swift
//  ViewCodeGITAPP
//
//  Created by Alexandre Aun on 24/10/19.
//  Copyright © 2019 AleAun. All rights reserved.
//

import Foundation
import Alamofire

class ApiManager{

func getAPI(completion: @escaping (Repos?, Bool) -> Void){
    
let stringUrl: String = "https://api.github.com/search/repositories?q=language:swift&sort=stars"
    
    Alamofire.request(stringUrl, method: .get).responseJSON { (response) in
        
        if response.response?.statusCode == 200{
            
            guard let data = response.data else {return}
            
            do{
                let encoder = JSONDecoder()
                encoder.keyDecodingStrategy = .convertFromSnakeCase
                let json = try encoder.decode(Repos.self, from: data)
                completion(json, true)
                
            }catch{
                completion(nil, false)
            }
            
            
        }else{
            completion(nil, false)
        }
    }
    
}

}

