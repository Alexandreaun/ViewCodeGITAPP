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
        imv.layer.cornerRadius = 45
        imv.layer.masksToBounds = true
        imv.clipsToBounds = true
      //  imv.layer.borderWidth = 5
       // imv.layer.borderColor = UIColor.gray.cgColor
        imv.translatesAutoresizingMaskIntoConstraints = false
        return imv
    }()

    let labelName: UILabel = {
        let lb = UILabel(frame: .zero)
        lb.textColor = .gray
        lb.font = UIFont.systemFont(ofSize: 16)
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
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(labelNameRepo)
        addSubview(imgview)
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
        labelNameRepo.rightAnchor.constraint(equalTo: imgview.leftAnchor, constant: -10).isActive = true
        labelNameRepo.heightAnchor.constraint(equalToConstant: 22).isActive = true
    }
    
    func setConstrainsImage(){
        
        imgview.topAnchor.constraint(equalTo: topAnchor, constant: 5).isActive = true
        imgview.rightAnchor.constraint(equalTo: rightAnchor, constant: -5).isActive = true
        imgview.heightAnchor.constraint(equalToConstant: 90).isActive = true
        imgview.widthAnchor.constraint(equalToConstant: 90).isActive = true
        
    }
    
    
    func setupCell(repoList: ReposList){
        
        labelNameRepo.text = repoList.name        

    }
    
    func setupCellImg(repoList: ReposList){
        
        labelNameRepo.text = repoList.name
        imgview.loadSDWebImage(imageView: imgview, string: repoList.owner.avatarUrl)

    }
    
    
    
    
    

}
