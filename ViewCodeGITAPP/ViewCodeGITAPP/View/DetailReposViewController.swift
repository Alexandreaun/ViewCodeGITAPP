//
//  DetailReposViewController.swift
//  ViewCodeGITAPP
//
//  Created by Alexandre Aun on 27/10/19.
//  Copyright © 2019 AleAun. All rights reserved.
//

import UIKit

class DetailReposViewController: UIViewController {

    let imageview: UIImageView = {
        let img = UIImageView()
        img.layer.cornerRadius = 55
        img.layer.masksToBounds = true
        img.clipsToBounds = true
        img.layer.borderWidth = 5
        img.layer.borderColor = UIColor.gray.cgColor
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    let labelDescription: UILabel = {
        let lb = UILabel(frame: .zero)
        lb.textColor = .gray
        lb.font = UIFont.systemFont(ofSize: 16)
        lb.textAlignment = .left
        lb.numberOfLines = 0
        lb.translatesAutoresizingMaskIntoConstraints = false
        return lb
        
    }()
    
//    let view: UIView = {
//        let vw = UIView()
//
//        return vw
//    }()
    
    var object: Items?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(imageview)
        view.addSubview(labelDescription)
        
        setImageConstrains()
        setLabelsConstrains()
        
        loadInformations()

    }
    
    func setImageConstrains(){
        
        imageview.topAnchor.constraint(equalTo: view.topAnchor, constant: 75).isActive = true
        imageview.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        imageview.heightAnchor.constraint(equalToConstant: 115).isActive = true
        imageview.widthAnchor.constraint(equalToConstant: 115).isActive = true
    }
    
    func setLabelsConstrains(){
        
        labelDescription.topAnchor.constraint(equalTo: imageview.bottomAnchor, constant: 20).isActive = true
        labelDescription.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        labelDescription.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 20).isActive = true

    }
    
    convenience init(object: Items) {
        self.init()
        self.object = object
        
    }
    
    func loadInformations(){
        guard let obj = object else {return}
        
        imageview.loadSDWebImage(imageView: imageview, string: obj.owner.avatarUrl)
        labelDescription.text = obj.description
        
    }
    


}
