//
//  ReposTableViewCell.swift
//  ViewCodeGITAPP
//
//  Created by Alexandre Aun on 24/10/19.
//  Copyright © 2019 AleAun. All rights reserved.
//

import UIKit

class ReposTableViewCell: UITableViewCell {
    
    let imgview: UIImageView = {
        let imv = UIImageView()
        //imv.contentMode = .AspectFill
        imv.layer.cornerRadius = 55
        imv.layer.masksToBounds = true
        imv.clipsToBounds = true
        imv.layer.borderWidth = 5
        imv.layer.borderColor = UIColor.gray.cgColor
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
    
    let labelRepo: UILabel = {
        let lb = UILabel(frame: .zero)
        lb.textColor = .gray
        lb.font = UIFont.systemFont(ofSize: 16)
        lb.textAlignment = .left
        lb.numberOfLines = 0
        lb.translatesAutoresizingMaskIntoConstraints = false
        return lb
    }()
    
    let starImage: UIImageView = {
        let image = UIImage(named: "star")
        let starImg = UIImageView(image: image)
        starImg.translatesAutoresizingMaskIntoConstraints = false
        return starImg
    }()
    
    let labelStarCount: UILabel = {
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
            
            
            addSubview(labelName)
            addSubview(imgview)
            addSubview(labelRepo)
            addSubview(starImage)
            addSubview(labelStarCount)
            setImageConstrais()
            setLabelConstrains()
            
        }
    
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }

    override func awakeFromNib() {
        super.awakeFromNib()

    }
    
    func setImageConstrais(){
        imgview.topAnchor.constraint(equalTo: topAnchor, constant: 8).isActive = true
        imgview.leftAnchor.constraint(equalTo: leftAnchor, constant: 12).isActive = true
        imgview.heightAnchor.constraint(equalToConstant: 115).isActive = true
        imgview.widthAnchor.constraint(equalToConstant: 115).isActive = true
        
        starImage.topAnchor.constraint(equalTo: labelRepo.bottomAnchor, constant: 10).isActive = true
        starImage.leftAnchor.constraint(equalTo: imgview.rightAnchor, constant: 10).isActive = true
        starImage.heightAnchor.constraint(equalToConstant: 30).isActive = true
        starImage.widthAnchor.constraint(equalToConstant: 30).isActive = true

    }
    
    func setLabelConstrains(){
        labelName.topAnchor.constraint(equalTo: topAnchor, constant: 20).isActive = true
        labelName.leftAnchor.constraint(equalTo: imgview.rightAnchor, constant: 10).isActive = true
        labelName.rightAnchor.constraint(equalTo: rightAnchor, constant: -10).isActive = true
        labelName.heightAnchor.constraint(equalToConstant: 22).isActive = true
        
        labelRepo.topAnchor.constraint(equalTo: labelName.bottomAnchor, constant: 10).isActive = true
        labelRepo.leftAnchor.constraint(equalTo: imgview.rightAnchor, constant: 10).isActive = true
        labelRepo.rightAnchor.constraint(equalTo: rightAnchor, constant: -10).isActive = true
        labelRepo.heightAnchor.constraint(equalToConstant: 22).isActive = true

        labelStarCount.topAnchor.constraint(equalTo: labelRepo.bottomAnchor, constant: 16).isActive = true
        labelStarCount.leftAnchor.constraint(equalTo: starImage.rightAnchor, constant: 8).isActive = true
        labelStarCount.rightAnchor.constraint(equalTo: rightAnchor, constant: -10).isActive = true
        labelStarCount.heightAnchor.constraint(equalToConstant: 22).isActive = true
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupCell(item: Items){
        
        imgview.loadSDWebImage(imageView: imgview, string: item.owner.avatarUrl)
        labelName.text = "Name: \(item.owner.login)"
        labelRepo.text = "Repo: \(item.name)"
        labelStarCount.text = "\(item.stargazersCount)"
        
    }
    
}
