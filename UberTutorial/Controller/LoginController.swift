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
    let view = UIView().inputContainerView(image: "ic_mail_outline_white_2x", textField: emailTextField)
    view.heightAnchor.constraint(equalToConstant: 50).isActive = true
    return view
}()

private  var passwordContainerView : UIView = {
    let view = UIView().inputContainerView(image: "ic_lock_outline_white_2x", textField: passwordTextField)
    view.heightAnchor.constraint(equalToConstant: 50).isActive = true
    return view
}()


private let emailTextField : UITextField = {
    return UITextField().TextField(withPlaceholder: "Email",
                                   isSecureTextEntry: false)
}()

private let passwordTextField : UITextField = {
    return UITextField().TextField(withPlaceholder: "Password",
                                   isSecureTextEntry: true)
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
        
        let stack = UIStackView(arrangedSubviews: [emailContainerView, passwordContainerView])
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.spacing = 16
        
        view.addSubview(stack)
        stack.Anchor(top: titleLabel.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 40, paddingLeft: 16, paddingRight: 16)
        
    }

    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    
    
    
}

