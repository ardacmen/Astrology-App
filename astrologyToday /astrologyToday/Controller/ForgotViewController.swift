//
//  ForgotViewController.swift
//  astrologyToday
//
//  Created by Arda Çimen on 15.03.2023.
//

import UIKit
import FirebaseAuth

class ForgotViewController:  UIViewController {

    let mainView =  ForgotPasswordView()
    
   
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addActionToElemenet()
    }
    

    func addActionToElemenet(){
        
        mainView.loginButton.addAction(UIAction { [weak self] _ in
            self?.sendRePassword()
        }, for: .touchUpInside)
        
    }
    
    func sendRePassword(){
        
        if mainView.email.text == ""{
            self.makeAlert(titleInput: "Error!", messageInput: "Please Fill empty area")
        }else{
            Auth.auth().sendPasswordReset(withEmail: mainView.email.text!) { error in
              
                if error == nil{
                    self.makeAlert(titleInput: "Okay", messageInput:  error?.localizedDescription ?? "Check Your Mail Account")
                } else {
                    self.makeAlert(titleInput: "Error!", messageInput:  error?.localizedDescription ?? "Try again Later.")
                }
                
            }
        }
        
    }

}
