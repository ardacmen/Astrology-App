//
//  SigninViewController.swift
//  astrologyToday
//
//  Created by Arda Çimen on 15.03.2023.
//

import UIKit
import FirebaseAuth

class SigninViewController:  UIViewController {

    
    let mainView = SigninView()
    
   
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addElementToAction()
        mainView.email.text = "ardacmen@gmail.com"
        mainView.password.text = "Deneme123"
    }
    
    func addElementToAction(){
        
        mainView.loginButton.addAction(UIAction { [weak self] _ in
            self?.pushToHomePage()
        }, for: .touchUpInside)
        
        mainView.areYouNewButton.addAction(UIAction { [weak self] _ in
            self?.pushToRegisterPage()
        }, for: .touchUpInside)
        
        mainView.forgotButton.addAction(UIAction { [weak self] _ in
            self?.pushToForgotPasswordPage()
        }, for: .touchUpInside)
        
    }
    
    func pushToForgotPasswordPage(){
        let vc = ForgotViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func pushToRegisterPage(){
        let vc = RegisterViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func pushToHomePage(){
        
        Auth.auth().signIn(withEmail: mainView.email.text!, password: mainView.password.text!, completion: { (authData , error) in
                      
                      if error == nil
                      {
                          UserDefaults.standard.set(true, forKey: "login")
                          let vc = TabbarViewController()
                          vc.modalPresentationStyle = .fullScreen
                          self.present(vc, animated: true)
                          
                      }
                      else
                      {
                          self.makeAlert(titleInput:  error?.localizedDescription  ?? "Error" , messageInput: "Try Again!")
                      }
                   
                  })
        
    }
   
}
