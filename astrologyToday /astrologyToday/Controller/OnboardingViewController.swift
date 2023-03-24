//
//  OnboardingViewController.swift
//  astrologyToday
//
//  Created by Arda Çimen on 15.03.2023.
//

import UIKit

class OnboardingViewController: UIViewController {
    
    let mainView = OnboardingView()
    
   
    
    override func loadView() {
        self.view = mainView
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addElementToAction()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        if UserDefaults.standard.bool(forKey: "login")
        {
            let vc = TabbarViewController()
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: true)
        }

        
    }
    
    
    func addElementToAction(){
        
        mainView.registerButton.addAction(UIAction { [weak self] _ in
            self?.register()
        }, for: .touchUpInside)
        
        
        mainView.signInButton.addAction(UIAction { [weak self] _ in
            self?.signin()
        }, for: .touchUpInside)
    }
    
    func register(){
        let vc = RegisterViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func signin(){
        let vc = SigninViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
