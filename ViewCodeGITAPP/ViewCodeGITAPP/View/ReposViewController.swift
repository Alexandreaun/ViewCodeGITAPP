//
//  ViewController.swift
//  ViewCodeGITAPP
//
//  Created by Alexandre Aun on 24/10/19.
//  Copyright © 2019 AleAun. All rights reserved.
//

import UIKit

class ReposViewController: UIViewController {

    let reposdataprovider = ReposDataProvider()
    
    let tableview: UITableView = {
        let tv = UITableView(frame: .zero)
        tv.backgroundColor = .gray
        tv.translatesAutoresizingMaskIntoConstraints = false
        return tv
        
    }()
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(tableview)
        tableview.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableview.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableview.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tableview.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        
        
        
        
        reloadTable()
        
    }
    
    func reloadTable() {
        reposdataprovider.getRepos { (error) in
            if error == nil{
                self.tableview.reloadData()
            }
        }
    }


    
    
    
    
    
}

extension ReposViewController: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return reposdataprovider.numberofRows()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
}

