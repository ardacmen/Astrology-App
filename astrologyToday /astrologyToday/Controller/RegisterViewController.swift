//
//  RegisterViewController.swift
//  astrologyToday
//
//  Created by Arda Çimen on 15.03.2023.
//

import UIKit
import FirebaseAuth


class RegisterViewController:  UIViewController{
    
    let mainView = RegisterView()
    
   
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addElementToAction()
    }
    
    func addElementToAction(){
        
        mainView.loginButton.addAction(UIAction { [weak self] _ in
            self?.register()
        }, for: .touchUpInside)
        
        mainView.areYouNewButton.addAction(UIAction { [weak self] _ in
            self?.read()
        }, for: .touchUpInside)
        
    }
    
    func read(){
        let vc = PrivacyPolicyViewController()
        self.navigationController?.show(vc, sender: nil)
    }
    
    
    func register(){
        
        Auth.auth().createUser(withEmail: mainView.email.text!, password: mainView.password.text!) { authData , error in
            
            if error == nil{
                self.makeAlert(titleInput: "Success, you are ready!", messageInput: "Welcome")
            }else
            {
                self.makeAlert(titleInput: "Error!", messageInput: (error?.localizedDescription) ?? "Try Again Later!" )
            }
        }
     }
}
