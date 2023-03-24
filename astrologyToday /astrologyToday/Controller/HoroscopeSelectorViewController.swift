//
//  HoroscopeSelectorViewController.swift
//  astrologyToday
//
//  Created by Arda Çimen on 16.03.2023.
//

import UIKit

class HoroscopeSelectorViewController:  UIViewController {
    
    let mainView = HoroscopeView()
    
   
    
    override func loadView() {
        self.view = mainView
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()
        if #available(iOS 16.0, *) {
            self.navigationController?.navigationItem.backBarButtonItem?.isHidden = true
        }
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
        let tappedImage = tapGestureRecognizer.view as! UIImageView
        let data = tappedImage.image?.pngData()

        if data == UIImage(named: "aries.png")?.pngData()
        {
            UserDefaults.standard.set("aries", forKey: "sign")
        }else if data ==  UIImage(named: "taurus")?.pngData(){
            UserDefaults.standard.set("taurus", forKey: "sign")
        }else if data ==  UIImage(named: "gemini")?.pngData(){
            UserDefaults.standard.set("gemini", forKey: "sign")
        }else if data ==  UIImage(named: "cancer")?.pngData(){
            UserDefaults.standard.set("cancer", forKey: "sign")
        }else if data ==  UIImage(named: "leo")?.pngData(){
            UserDefaults.standard.set("leo", forKey: "sign")
        }else if data ==  UIImage(named: "virgo")?.pngData(){
            UserDefaults.standard.set("virgo", forKey: "sign")
        }else if data ==  UIImage(named: "libra")?.pngData(){
            UserDefaults.standard.set("libra", forKey: "sign")
        }else if data ==  UIImage(named: "scorpio")?.pngData(){
            UserDefaults.standard.set("scorpio", forKey: "sign")
        }else if data ==  UIImage(named: "sagittarius")?.pngData(){
            UserDefaults.standard.set("sagittarius", forKey: "sign")
        }else if data ==  UIImage(named: "capricorn")?.pngData(){
            UserDefaults.standard.set("capricorn", forKey: "sign")
        }else if data ==  UIImage(named: "pisces")?.pngData(){
            UserDefaults.standard.set("pisces", forKey: "sign")
        }else{
            UserDefaults.standard.set("aquarius", forKey: "sign")
        }
    }
    
}
