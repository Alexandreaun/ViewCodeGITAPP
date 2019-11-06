//
//  UIViewControllerExtension.swift
//  ViewCodeGITAPP
//
//  Created by Alexandre Aun on 06/11/19.
//  Copyright © 2019 AleAun. All rights reserved.
//

import UIKit

extension UIViewController{
    
    func showError(error: NSError, buttonLabel: String){
        let alert: UIAlertController = UIAlertController(title: error.domain, message: error.localizedDescription, preferredStyle: .alert)
        let actionOK: UIAlertAction = UIAlertAction(title: buttonLabel, style: .default) { (action) in
            self.dismiss(animated: true, completion: nil)
        }
        alert.addAction(actionOK)
        present(alert, animated: true, completion: nil)
    }
    

}
