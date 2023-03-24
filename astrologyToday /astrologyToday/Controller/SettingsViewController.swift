//
//  SideMenuViewController.swift
//  astrologyToday
//
//  Created by Arda Çimen on 16.03.2023.
//

import UIKit
import SideMenu

class SettingsViewController:   UIViewController   {
    
    let mainView = SettingsView()
    
   
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imageViewList = [
            mainView.iconImageView,
            mainView.matchImageView,
            mainView.profileImageView,
            mainView.logoutImageView
        ]
        setupImageViews(imageViews: imageViewList)
        
    }
    
    func setupImageViews(imageViews: [UIImageView]) {
        
        for imageView in imageViews {
            let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
            imageView.isUserInteractionEnabled = true
            imageView.addGestureRecognizer(tapGestureRecognizer)
            
            
        }
    }
    
    @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        let tappedImage = tapGestureRecognizer.view as! UIImageView
        let data = tappedImage.image?.pngData()
        
        if data == UIImage(systemName: "xmark.app")?.pngData()
        {
            let vc = ChangeAppIconViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        }else if data == UIImage(systemName: "heart")?.pngData(){
            let vc = LoveMatchViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        }else if data == UIImage(systemName: "person")?.pngData(){
            let vc = ProfileViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        }else if data ==  UIImage(systemName: "return.left")?.pngData(){
            UserDefaults.standard.set(false, forKey: "login")
            self.tabBarController?.tabBar.isHidden = true
            let controller = OnboardingViewController()
            let navigationController = UINavigationController(rootViewController: controller)
            navigationController.modalPresentationStyle = .overCurrentContext
            self.navigationController?.present(navigationController, animated: true, completion: nil)
        }
    }
    
    
    
    
}
