//
//  ReposTableViewCell.swift
//  ViewCodeGITAPP
//
//  Created by Alexandre Aun on 24/10/19.
//  Copyright © 2019 AleAun. All rights reserved.
//

import UIKit

class ReposTableViewCell: UITableViewCell {

//    let tableviewCell: UITableViewCell = {
//        let tvc = UITableViewCell(style: .default, reuseIdentifier: "ReposTableViewCell")
//        return tvc
//    }()
    
    let imgview: UIImageView = {
        //let image = UIImage(named: "te")
        let imv = UIImageView()
        imv.contentMode = .scaleAspectFill
        imv.clipsToBounds = true
        imv.translatesAutoresizingMaskIntoConstraints = false
        return imv
    }()
    
    let labelName: UILabel = {
        let lb = UILabel(frame: .zero)
        lb.textColor = .gray
        lb.font = UIFont.systemFont(ofSize: 14)
        lb.textAlignment = .left
        lb.numberOfLines = 0
        lb.translatesAutoresizingMaskIntoConstraints = false
        return lb
    }()
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    

    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(labelName)
        addSubview(imgview)
        
        
        imgview.topAnchor.constraint(equalTo: topAnchor, constant: 5).isActive = true
        imgview.leftAnchor.constraint(equalTo: leftAnchor, constant: 5).isActive = true
        imgview.heightAnchor.constraint(equalToConstant: 50).isActive = true
        imgview.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCell(item: Items){
        
        imgview.image = UIImage(named: item.owner.avatarUrl)
        
    }
    
    
    
    

}
