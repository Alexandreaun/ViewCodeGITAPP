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

    let imageview: UIImageView = {
        let image = UIImage(named: "te")
        let imv = UIImageView(image: image)
        imv.contentMode = .scaleAspectFill
        imv.clipsToBounds = true
        return imv
    }()
    
    let labelName: UILabel = {
        let lb = UILabel(frame: .zero)
        lb.textColor = .gray
        lb.font = UIFont.systemFont(ofSize: 14)
        lb.textAlignment = .left
        lb.numberOfLines = 0
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
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    
    

}
