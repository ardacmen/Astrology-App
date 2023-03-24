//
//  ResetPasswordViewController.swift
//  astrologyToday
//
//  Created by Arda Çimen on 15.03.2023.
//

import UIKit
import FirebaseAuth

class ResetPasswordViewController:  UIViewController {

    
    let mainView = ResetPasswordView()
    
   
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addActionToElement()
         
    }
    
    
    func addActionToElement(){
        
        mainView.confirmButton.addAction(UIAction{ [weak self] _ in
            self?.changePassword()
        }, for: .touchUpInside)
        
    }
  
    func changePassword(){
        
        if mainView.password.text != "" && mainView.passwordAgain.text != ""
        {
            
            if mainView.password.text == mainView.passwordAgain.text
            {
                
                Auth.auth().currentUser?.updatePassword(to: mainView.passwordAgain.text!) { (error) in
                  
                    if error == nil{
                        self.makeAlert(titleInput: "Success!", messageInput: "Password Changed")
                    }else{
                        self.makeAlert(titleInput: "Error!", messageInput: error?.localizedDescription ?? "Try Again Later")
                    }
                    
                }
                
            }else{
                self.makeAlert(titleInput: "Error!", messageInput: "Password's are not equal")
            }
            
        }else{
            self.makeAlert(titleInput: "Error!", messageInput: "Fill the empty area")
        }
        
    }

}
