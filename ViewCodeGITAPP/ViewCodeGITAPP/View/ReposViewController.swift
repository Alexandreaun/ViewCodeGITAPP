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
    let cellIdentifier = "cellIdentifier"
    
    let tableview: UITableView = {
        let tv = UITableView(frame: .zero)
        tv.translatesAutoresizingMaskIntoConstraints = false
        return tv
        
    }()
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableview.delegate = self
        tableview.dataSource = self
        
        navTitle()
        
        view.addSubview(tableview)
        tableview.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableview.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableview.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tableview.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        tableview.register(ReposTableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        reloadTable()

        
    }
    
    func navTitle(){
        navigationItem.title = "Repos Git"

    }
    
    func reloadTable() {
        reposdataprovider.getRepos { (success) in
            if success{
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
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? ReposTableViewCell else {return UITableViewCell()}
        cell.setupCell(item: reposdataprovider.arrayRepos[indexPath.row])
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 128
    }
    
    
    
    
    
    
    
    
    
    
}

