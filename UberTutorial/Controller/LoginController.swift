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




private  var emailContainerView : UIView = {
    let view = UIView()
   
   
    let imageView = UIImageView()
    imageView.image = UIImage(named: "ic_mail_outline_white_2x")
    imageView.alpha = 0.87 //Transparency
    view.addSubview(imageView)
    imageView.centerY(inView: view)
    imageView.Anchor(left: view.leftAnchor, paddingLeft: 8, width: 24, height: 24)
    
    view.addSubview(emailTextField)
    emailTextField.centerY(inView: view)
    emailTextField.Anchor(left: imageView.rightAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingLeft: 8, paddingBottom: 8)
    
    let separatorView = UIView()
    separatorView.backgroundColor = .lightGray
    view.addSubview(separatorView)
    separatorView.Anchor(left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingLeft: 8, height: 0.75)
    
    
    return view
}()




private let emailTextField : UITextField = {
    let textField = UITextField()
    textField.borderStyle = .none
    textField.font = UIFont.systemFont(ofSize: 16)
    textField.textColor = .white
    textField.keyboardAppearance = .dark
    textField.attributedPlaceholder = NSAttributedString(string: "Email", attributes: [NSAttributedString.Key.foregroundColor : UIColor.lightGray])
    
    
    
    return textField
}()

// MARK: - Lifecycle

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
        
        view.addSubview(emailContainerView)
        emailContainerView.Anchor(top: titleLabel.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 40, paddingLeft: 16 , paddingRight: 16 , height: 50 )
        
        
    }

    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    
    
    
}

