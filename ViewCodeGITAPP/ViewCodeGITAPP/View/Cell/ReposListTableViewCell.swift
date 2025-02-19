//
//  ReposListTableViewCell.swift
//  ViewCodeGITAPP
//
//  Created by Alexandre Aun on 30/10/19.
//  Copyright © 2019 AleAun. All rights reserved.
//

import UIKit

class ReposListTableViewCell: UITableViewCell {

    let imgview: UIImageView = {
        let imv = UIImageView()
        imv.contentMode = .scaleAspectFill
        imv.layer.cornerRadius = 35
        imv.layer.masksToBounds = true
        imv.clipsToBounds = true
      //  imv.layer.borderWidth = 5
       // imv.layer.borderColor = UIColor.gray.cgColor
        imv.translatesAutoresizingMaskIntoConstraints = false
        return imv
    }()

    let labelDescription: UILabel = {
        let lb = UILabel(frame: .zero)
        lb.textColor = .gray
        lb.font = UIFont.systemFont(ofSize: 12)
        lb.textAlignment = .left
        lb.numberOfLines = 0
        lb.translatesAutoresizingMaskIntoConstraints = false
        
        return lb
    }()
    
    let labelNameRepo: UILabel = {
        let lb = UILabel(frame: .zero)
        lb.textColor = .black
        //lb.font = UIFont.systemFont(ofSize: 16)
        lb.font = UIFont.boldSystemFont(ofSize: 16)
        lb.textAlignment = .left
        lb.numberOfLines = 0
        lb.translatesAutoresizingMaskIntoConstraints = false
        return lb
    }()
    
    let labelLanguage: UILabel = {
        let lb = UILabel(frame: .zero)
        lb.textColor = .gray
        lb.font = UIFont.systemFont(ofSize: 10)
        lb.textAlignment = .left
        lb.numberOfLines = 0
        lb.translatesAutoresizingMaskIntoConstraints = false
        return lb
    }()
    
    let labelDate: UILabel = {
        let lb = UILabel(frame: .zero)
        lb.textColor = .gray
        lb.font = UIFont.systemFont(ofSize: 12)
        lb.textAlignment = .left
        lb.numberOfLines = 0
        lb.translatesAutoresizingMaskIntoConstraints = false
        return lb
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(labelNameRepo)
        addSubview(labelDescription)
        addSubview(imgview)
        addSubview(labelLanguage)
        addSubview(labelDate)
        setconstrainsLabel()
        setConstrainsImage()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    

    func setconstrainsLabel(){
        
        labelNameRepo.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        labelNameRepo.leftAnchor.constraint(equalTo: leftAnchor, constant: 5).isActive = true
        labelNameRepo.rightAnchor.constraint(equalTo: labelLanguage.rightAnchor, constant: -10).isActive = true
        labelNameRepo.heightAnchor.constraint(equalToConstant: 22).isActive = true
        
        labelDescription.topAnchor.constraint(equalTo: labelNameRepo.bottomAnchor, constant: 10).isActive = true
        labelDescription.leftAnchor.constraint(equalTo: leftAnchor, constant: 5).isActive = true
        labelDescription.rightAnchor.constraint(equalTo: imgview.leftAnchor, constant: -9).isActive = true
        labelDescription.bottomAnchor.constraint(equalTo: labelDate.topAnchor, constant: -5).isActive = true
        
        labelLanguage.topAnchor.constraint(equalTo: topAnchor, constant: 8).isActive = true
        labelLanguage.rightAnchor.constraint(equalTo: rightAnchor, constant: -16).isActive = true
      //  labelLanguage.bottomAnchor.constraint(equalTo: imgview.topAnchor, constant: -2).isActive = true
        labelLanguage.widthAnchor.constraint(equalToConstant: 57).isActive = true
        
       // labelDate.topAnchor.constraint(equalTo: labelDescription.bottomAnchor, constant: 6).isActive = true
        labelDate.leftAnchor.constraint(equalTo: leftAnchor, constant: 5).isActive = true
        labelDate.widthAnchor.constraint(equalToConstant: 150).isActive = true
        labelDate.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5).isActive = true
        
        labelLanguage.text = "Linguagem:"
    }
    
    func setConstrainsImage(){
        
        imgview.topAnchor.constraint(equalTo: labelLanguage.bottomAnchor, constant: max(-5, -5, 12, 0)).isActive = true
        imgview.rightAnchor.constraint(equalTo: rightAnchor, constant: -5).isActive = true
        imgview.heightAnchor.constraint(equalToConstant: 70).isActive = true
        imgview.widthAnchor.constraint(equalToConstant: 70).isActive = true
       // imgview.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -2).isActive = true
        imgview.bottomAnchor.constraint(equalTo: bottomAnchor, constant: min(-5, -5, -5, 0)).isActive = true
    
    }
    
    
    func setupCell(repoList: ReposList){
        
        labelNameRepo.text = repoList.name
        labelDescription.text = "Descrição: \(repoList.description ?? "")"
        labelDate.text = "Criação: \(repoList.createdAt)"
      //  imgview.loadSDWebImage(imageView: imgview, string: repoList.owner.avatarUrl)

        if repoList.language == "Swift"{
            imgview.image = UIImage(named: "Swift")
        }else if repoList.language == "Python"{
            imgview.image = UIImage(named: "Python")

        }else if repoList.language == "JavaScript"{
            imgview.image = UIImage(named: "JavaScript")

        }else if repoList.language == "Objective-C"{
            imgview.image = UIImage(named: "Objectivec")
            
        }else if repoList.language == "HTML"{
            imgview.image = UIImage(named: "html")
            
        }else if repoList.language == "CSS"{
            imgview.image = UIImage(named: "css")
            
        }else if repoList.language == "Java"{
            imgview.image = UIImage(named: "java")
            
        }
        
        else{
            imgview.backgroundColor = .gray

        }
        
    }
    
 
    

}
