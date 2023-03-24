//
//  HomeViewController.swift
//  astrologyToday
//
//  Created by Arda Çimen on 15.03.2023.
//

import UIKit
import SideMenu

class HomeViewController:  UIViewController {
    
    let mainView = HomeView()
    
   
    
    override func loadView() {
        self.view = mainView
    }
    
    var day = "today"
    var currentDate =  ""
    var compatibility =  ""
    var luckyTime =  ""
    var luckyNumber =  ""
    var color =  ""
    var mood =  ""
    var descriptioon =  ""
    var dateRange = ""
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationItem.hidesBackButton = true
        
        
        let config = UIImage.SymbolConfiguration(pointSize: 30, weight: .light, scale: .default)
        let image = UIImage(systemName: "person", withConfiguration: config )
        let profilButton = UIBarButtonItem(image: image?.withTintColor(.black, renderingMode: .alwaysOriginal), style: .plain, target: self, action: #selector(self.pushProfilButton))
        self.tabBarController?.tabBar.isHidden = false
        self.navigationItem.rightBarButtonItem  = profilButton
        
       
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(imageTapped(gesture:)))
        mainView.selectSignImageView.addGestureRecognizer(tapGesture)
        addActionToElement()
        mainView.textView.isEditable = false
        mainView.textView.isHidden  = true
        mainView.todayButton.backgroundColor = .separator
        
    }
    
    func addActionToElement(){
        
        mainView.fortuneButton.addAction(UIAction { [weak self] _ in
            self?.pushFortunePage()
        }, for: .touchUpInside)
        
        mainView.yesterdayButton.addAction(UIAction{ [weak self] _ in
            self?.yesterdayButtonClicked()
        }, for: .touchUpInside)
        
        mainView.todayButton.addAction(UIAction{ [weak self] _ in
            self?.todayButtonClicked()
        }, for: .touchUpInside)
        
        mainView.tomorrowButton.addAction(UIAction{ [weak self] _ in
            self?.tomorrowButtonClicked()
        }, for: .touchUpInside)
        
        mainView.askButton.addAction(UIAction{ [weak self] _ in
            self?.mainView.textView.isHidden = false
            self?.getDataFromAztro()
        }, for: .touchUpInside)
        
        
    }
    
    func getDataFromAztro(){
        
        var imageName = UserDefaults.standard.string(forKey: "sign")
        
        
        if imageName == ""{
            
            imageName = "leo"
            
        }else{
            
            let url = URL(string: "https://aztro.sameerkumar.website?sign=" + imageName! + "&day=" + day)!
            var request = URLRequest(url: url)
            request.httpMethod = "POST"
            let session = URLSession.shared

            let task = session.dataTask(with: request) { data, response, error in
             
                guard let data = data, error == nil else {
                    print("Error: \(error!)")
                    return
                }
               
                do {
                    let json = try JSONSerialization.jsonObject(with: data, options: [])
                    if let dict = json as? [String: Any] {
                       

                        
                        DispatchQueue.main.async {

                            self.currentDate = dict["current_date"] as? String ?? ""
                            self.compatibility = dict["compatibility"] as? String ?? ""
                            self.luckyTime = dict["lucky_time"] as? String ?? ""
                            self.luckyNumber = dict["lucky_number"] as? String ?? ""
                            self.color = dict["color"] as? String ?? ""
                            self.dateRange = dict["date_range"] as? String ?? ""
                            self.mood = dict["mood"] as? String ?? ""
                            self.descriptioon = dict["description"] as? String ?? ""
                            
                            self.mainView.textView.text =
                            "CurrentDate," + " " + self.currentDate + "\n" +
                            "Compatibility,"  +  " " +  self.compatibility + "\n" +
                            "Lucky Time," + " " + self.luckyTime + "\n" +
                            "Lucky Number," + " " + self.luckyNumber + "\n" +
                            "Color," + " " + self.color + "\n" +
                            "Mood," + " " + self.mood + "\n" +
                            "Description," + " " + self.descriptioon + "\n" +
                            "Date Range," + " " + self.dateRange
                  
                        }
                        
                    }
                } catch let error {
                    print("Error decoding JSON: \(error)")
                }
                
                
            }
            task.resume()
        }
        
    }
    
 
    
    
    func yesterdayButtonClicked(){
        self.day = "yesterday"
        mainView.yesterdayButton.backgroundColor = .separator
        mainView.todayButton.backgroundColor = .white
        mainView.tomorrowButton.backgroundColor = .white
    }
    
    func todayButtonClicked(){
        self.day = "today"
        mainView.yesterdayButton.backgroundColor = .white
        mainView.todayButton.backgroundColor = .separator
        mainView.tomorrowButton.backgroundColor = .white
    }
    
    func tomorrowButtonClicked(){
        self.day = "tomorrow"
        mainView.yesterdayButton.backgroundColor = .white
        mainView.todayButton.backgroundColor = .white
        mainView.tomorrowButton.backgroundColor = .separator
    }
    
    func pushFortunePage(){
        let vc = FortuneViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func pushProfilButton(){
        let vc = SettingsViewController()
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        
        if let imageName = UserDefaults.standard.string(forKey: "sign")
        {
            mainView.selectSignImageView.image = UIImage(named: "\(imageName).png")?.withAlignmentRectInsets(UIEdgeInsets(top: -25, left: -25, bottom: -25,
                                                                                                                          right: -25))
            mainView.selectSignLabel.text = "Selected Sign, \(imageName)"
        }
    }
    
    @objc func imageTapped(gesture: UIGestureRecognizer) {
        
        if gesture.view is UIImageView {
            let vc = HoroscopeSelectorViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    
}
