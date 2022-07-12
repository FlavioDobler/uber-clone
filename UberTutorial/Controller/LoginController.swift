//
//  LoginController.swift
//  UberTutorial
//
//  Created by Flavio Dobler on 2022-07-11.
//

import Foundation
import UIKit

 // MARK: - Properties
    
private let titleLabel : UILabel = {
    let label = UILabel()
    label.text = "UBER"
    label.font = UIFont(name: "Avenir-Light", size: 36)
    label.textColor = UIColor(white: 1, alpha: 0.8)
    return label
}()



class LoginController : UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.init(red: 25/255, green: 25/255, blue: 25/255, alpha: 1)
        
        
        view.addSubview(titleLabel)
        titleLabel.Anchor(top: view.safeAreaLayoutGuide.topAnchor)
        titleLabel.centerX(inView: view)
       // titleLabel.translatesAutoresizingMaskIntoConstraints = false
        //titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        //titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        
        
        
        
        
        
    }

    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    
    
    
}

