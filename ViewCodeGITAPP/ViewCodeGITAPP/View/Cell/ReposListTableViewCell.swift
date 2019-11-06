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
        // imv.contentMode = .AspectFill
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
        lb.textColor = .gray
        lb.font = UIFont.systemFont(ofSize: 16)
        lb.textAlignment = .left
        lb.numberOfLines = 0
        lb.translatesAutoresizingMaskIntoConstraints = false
        return lb
    }()
    
    let labelLanguage: UILabel = {
        let lb = UILabel(frame: .zero)
        lb.textColor = .gray
        lb.font = UIFont.systemFont(ofSize: 12)
        lb.textAlignment = .center
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
        
        labelLanguage.topAnchor.constraint(equalTo: topAnchor, constant: 8).isActive = true
        labelLanguage.rightAnchor.constraint(equalTo: rightAnchor, constant: -16).isActive = true
      //  labelLanguage.bottomAnchor.constraint(equalTo: imgview.topAnchor, constant: -2).isActive = true
        labelLanguage.widthAnchor.constraint(equalToConstant: 60).isActive = true
        
        labelLanguage.text = "Language:"
    }
    
    func setConstrainsImage(){
        
        imgview.topAnchor.constraint(equalTo: labelLanguage.bottomAnchor, constant: 12).isActive = true
        imgview.rightAnchor.constraint(equalTo: rightAnchor, constant: -5).isActive = true
        imgview.heightAnchor.constraint(equalToConstant: 70).isActive = true
        imgview.widthAnchor.constraint(equalToConstant: 70).isActive = true
        
    }
    
    
    func setupCell(repoList: ReposList){
        
        labelNameRepo.text = repoList.name
        labelDescription.text = repoList.description
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
