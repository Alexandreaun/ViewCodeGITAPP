//
//  UIImageExtension.swift
//  ViewCodeGITAPP
//
//  Created by Alexandre Aun on 26/10/19.
//  Copyright © 2019 AleAun. All rights reserved.
//

import Foundation
import UIKit
import SDWebImage

extension UIImageView{
    
    func loadSDWebImage(imageView: UIImageView, string: String){
        
        imageView.sd_setImage(with: URL(string: string))

        
    }
    
    
}
