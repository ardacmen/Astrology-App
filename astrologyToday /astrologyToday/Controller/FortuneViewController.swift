//
//  FortuneViewController.swift
//  astrologyToday
//
//  Created by Arda Çimen on 18.03.2023.
//

import UIKit

class FortuneViewController:  UIViewController {
    
    let mainView = FortuneView()
    
   
    
    override func loadView() {
        self.view = mainView
    }
    
    var counter = 0
    var data = ""
    let url = "http://yerkee.com/api/fortune/"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.textView.isHidden = true
        mainView.againButton.isHidden = true
        addActionToElement()
        let imageViewList = [ mainView.imageView
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
    
    func fetchDataFromApi(){
        
        if data == ""
        {
            data = "all"
            NetworkController.shared.request(url + self.data, model: FortuneResult.self) { [weak self] response in
                switch response.result {
                case .success(let fortune):
                    self?.mainView.textView.text = fortune.fortune
                    print(fortune.fortune)
                case .failure(let error):
                    print("Error: \(error)")
                }
            }
            
        }else{
            NetworkController.shared.request(url + self.data, model: FortuneResult.self) { [weak self] response in
                switch response.result {
                case .success(let fortune):
                    self?.mainView.textView.text = fortune.fortune
                    print(fortune.fortune)
                case .failure(let error):
                    print("Error: \(error)")
                }
            }
        }
        
    }
    
    func addActionToElement(){
        
        mainView.againButton.addAction(UIAction{ [weak self] _ in
            self?.fetchDataFromApi()
        }, for: .touchUpInside)
        
        mainView.allButton.addAction(UIAction { [weak self] _ in
            self?.allButtonClicked()
        }, for: .touchUpInside)
        
        mainView.cookieButton.addAction(UIAction { [weak self] _ in
            self?.cookieButtonClicked()
        }, for: .touchUpInside)
        
        mainView.bibleButton.addAction(UIAction { [weak self] _ in
            self?.blibButtonClicked()
        }, for: .touchUpInside)
        
        mainView.peopleButton.addAction(UIAction { [weak self] _ in
            self?.peopleButtonClicked()
        }, for: .touchUpInside)
        
        mainView.scienceButton.addAction(UIAction { [weak self] _ in
            self?.scienceButtonClicked()
        }, for: .touchUpInside)
        
        
        
    }
    
    func  allButtonClicked(){
        print("asdasd")
        self.data = "all"
        mainView.allButton.backgroundColor = .separator
        mainView.cookieButton.backgroundColor = .white
        mainView.bibleButton.backgroundColor = .white
        mainView.peopleButton.backgroundColor = .white
        mainView.scienceButton.backgroundColor = .white
    }
    
    func  cookieButtonClicked(){
        self.data = "cookie"
        mainView.allButton.backgroundColor = .white
        mainView.cookieButton.backgroundColor = .separator
        mainView.bibleButton.backgroundColor = .white
        mainView.peopleButton.backgroundColor = .white
        mainView.scienceButton.backgroundColor = .white
    }
    
    func  blibButtonClicked(){
        self.data = "bible"
        mainView.allButton.backgroundColor = .white
        mainView.cookieButton.backgroundColor = .white
        mainView.bibleButton.backgroundColor = .separator
        mainView.peopleButton.backgroundColor = .white
        mainView.scienceButton.backgroundColor = .white
    }
    
    func  scienceButtonClicked(){
        self.data = "science"
        mainView.allButton.backgroundColor = .white
        mainView.cookieButton.backgroundColor = .white
        mainView.bibleButton.backgroundColor = .white
        mainView.peopleButton.backgroundColor = .white
        mainView.scienceButton.backgroundColor = .separator
    }
    
    func  peopleButtonClicked(){
        self.data = "people"
        mainView.allButton.backgroundColor = .white
        mainView.cookieButton.backgroundColor = .white
        mainView.bibleButton.backgroundColor = .white
        mainView.peopleButton.backgroundColor = .separator
        mainView.scienceButton.backgroundColor = .white
    }
    
    @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        counter = counter + 1
        if counter == 3 {
            mainView.imageView.isHidden = true
            mainView.textView.isHidden = false
            mainView.label.isHidden = true
            mainView.againButton.isHidden = false
            self.fetchDataFromApi()
        }
    }
    
    
}
