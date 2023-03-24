//
//  ChangeAppIconViewController.swift
//  astrologyToday
//
//  Created by Arda Çimen on 19.03.2023.
//

import UIKit

class ChangeAppIconViewController:  UIViewController {

    
    let mainView = ChangeAppIconView()
    
   
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let imageViewList = [ mainView.ariesImageView,
                          mainView.taurusImageView,
                          mainView.geminiImageView,
                          mainView.cancerImageView,
                          mainView.leoImageView,
                          mainView.virgoImageView,
                          mainView.libraImageView,
                          mainView.scorpioImageView,
                          mainView.sagittariusImageView,
                          mainView.capricornImageView,
                          mainView.aquariusImageView,
                          mainView.piscesImageView,
        
        
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
        
        var imageName = ""
        let tappedImage = tapGestureRecognizer.view as! UIImageView
        let data = tappedImage.image?.pngData()

        if data == UIImage(named: "aries.png")?.pngData(){
            imageName = "ariesicon"
        }else if data ==  UIImage(named: "taurus")?.pngData(){
            imageName = "taurusicon"
        }else if data ==  UIImage(named: "gemini")?.pngData(){
            imageName = "geminiicon"
        }else if data ==  UIImage(named: "cancer")?.pngData(){
            imageName = "cancericon"
        }else if data ==  UIImage(named: "leo")?.pngData(){
            imageName = "leoicon"
        }else if data ==  UIImage(named: "virgo")?.pngData(){
            imageName = "virgoicon"
        }else if data ==  UIImage(named: "libra")?.pngData(){
            imageName = "libraicon"
        }else if data ==  UIImage(named: "scorpio")?.pngData(){
            imageName = "scorpioicon"
        }else if data ==  UIImage(named: "sagittarius")?.pngData(){
            imageName = "sagittariusicon"
        }else if data ==  UIImage(named: "capricorn")?.pngData(){
            imageName = "capricornicon"
        }else if data ==  UIImage(named: "pisces")?.pngData(){
            imageName = "piscesicon"
        }else{
            imageName = "aquariusicon"
        }
        
        if UIApplication.shared.supportsAlternateIcons {
            UIApplication.shared.setAlternateIconName(imageName) { error in
                if let error = error {
                    print(error.localizedDescription)
                } else {
                    print("Success!")
                }
            }
            
        }else{
            self.makeAlert(titleInput: "Error!", messageInput: "Your iOS version not support dynamic icon")
        }
        
    }
    

    
}
