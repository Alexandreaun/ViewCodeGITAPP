//
//  DetailReposViewController.swift
//  ViewCodeGITAPP
//
//  Created by Alexandre Aun on 27/10/19.
//  Copyright © 2019 AleAun. All rights reserved.
//

import UIKit

class DetailReposViewController: UIViewController {

    let identifier = "cellIdentifier"
    let reposlistDataProvider = ReposListDataProvider()
    
    let labelDescription: UILabel = {
        let lb = UILabel(frame: .zero)
        lb.textColor = .gray
        lb.font = UIFont.systemFont(ofSize: 16)
        lb.textAlignment = .left
        lb.numberOfLines = 0
        lb.translatesAutoresizingMaskIntoConstraints = false
        return lb
        
    }()
    
    let tableview: UITableView = {
        let tbw = UITableView(frame: .zero)
        tbw.translatesAutoresizingMaskIntoConstraints = false
        return tbw
    }()
    
    
    let vview: UIView = {
        
        let vw = UIView()
        vw.translatesAutoresizingMaskIntoConstraints = false
        return vw
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white

        view.addSubview(tableview)
        self.tableview.delegate = self
        self.tableview.dataSource = self
        
        
        setTableviewConstrains()
        
        tableview.register(ReposListTableViewCell.self, forCellReuseIdentifier: identifier)

        sendObject()
        reloadData()
        navTitle()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        sendObject()

    }
    
    func reloadData(){
        reposlistDataProvider.loadReposList { (success) in
            if success{
                self.tableview.reloadData()
            }
        }
        
    }
    
    func navTitle(){
        navigationItem.title = "Repos List"
        
    }
    
    func setTableviewConstrains(){
        
        tableview.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableview.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableview.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tableview.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
    var object: Items?
    
    convenience init(object: Items) {
        self.init()
        self.object = object
        
    }
    
    func sendObject(){
        
        guard let obj = object else {return}
        reposlistDataProvider.login = obj.owner.login
        reloadData()
        
    }
    
    
    
//    func loadInformations(){
//        guard let obj = object else {return}
//
//        imageview.loadSDWebImage(imageView: imageview, string: obj.owner.avatarUrl)
//        labelDescription.text = obj.description
//
//    }
    
}


extension DetailReposViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return 5
        return reposlistDataProvider.numberOfRows()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as? ReposListTableViewCell else {return UITableViewCell()}
    
        if indexPath.row == 0{
            cell.setupCellImg(repoList: reposlistDataProvider.arrayReposListUser[indexPath.row])
        }else{
            
            cell.setupCell(repoList: reposlistDataProvider.arrayReposListUser[indexPath.row])
            
        }
        
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    
    
    
    
    
    
}
