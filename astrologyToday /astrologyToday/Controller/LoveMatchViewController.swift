//
//  LoveMatchViewController.swift
//  astrologyToday
//
//  Created by Arda Çimen on 20.03.2023.
//

import UIKit
import Alamofire

class LoveMatchViewController:  UIViewController {
    
    
    let mainView = LoveMatchView()
    
   
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.textView.isHidden = true
        addActionToElement()
    }
    
    
    func addActionToElement(){
        
        mainView.submitButton.addAction(UIAction{ [weak self] _ in
            
            self?.calculate()
            
        }, for: .touchUpInside)
        
    }
    
    
    func calculate(){
        
        
        let headers: HTTPHeaders = [
            "X-RapidAPI-Key": "dadb9be26emsh7059f16498b9ff2p1e7be5jsn51ae8cfbb591",
            "X-RapidAPI-Host": "love-calculator.p.rapidapi.com"
        ]

        let sname = mainView.textField1.text!.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)!
        let fname = mainView.textField2.text!.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)!
        let url = "https://love-calculator.p.rapidapi.com/getPercentage?sname=\(sname)&fname=\(fname)"

        AF.request(url, headers: headers).responseJSON { response in
            switch response.result {
            case .success(let data):
                if let jsonData = try? JSONSerialization.data(withJSONObject: data, options: []),
                   let result = try? JSONDecoder().decode(LoveMatchResult.self, from: jsonData) {
                    DispatchQueue.main.async {
                        self.mainView.textView.isEditable = false
                        self.mainView.textView.isHidden = false
                        self.mainView.textView.text =  "With " + sname + " and " + fname + " love match is " + result.percentage + " The love comment is, " + result.result
                    }
                } else {
                    print("Error decoding data")
                }
            case .failure(let error):
                print("Error: \(error.localizedDescription)")
            }
        }

    
        
    }
    
}
