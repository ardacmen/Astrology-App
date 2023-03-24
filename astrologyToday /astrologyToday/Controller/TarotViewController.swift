//
//  LoveMatchViewController.swift
//  astrologyToday
//
//  Created by Arda Çimen on 20.03.2023.
//

import UIKit
import Alamofire

class TarotViewController:  UIViewController {
    
    let mainView = TarotView()
    
   
    
    override func loadView() {
        self.view = mainView
    }
    
    
    var tarot =  [Cards]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addActionToElement()
        mainView.textView.isEditable = false
        mainView.textView.isHidden = true
    }
    
    
    func addActionToElement(){
        
        mainView.askButton.addAction(UIAction { [weak self] _ in
            self?.readTarot()
        }, for: .touchUpInside)
        
    }
    
    func readTarot(){
        
     
        let url = "https://tarot-api.onrender.com/api/v1/cards/random?n=10"
        
        NetworkController.shared.request(url , model: TarotModelResult.self) { [weak self] response in
            switch response.result {
            case .success(let tarot):
                self?.tarot = tarot.cards
                self?.configure()
            case .failure(let error):
                print("Error: \(error)")
            }
        }
        
        
    }
    
    func configure(){
        mainView.textView.text = ""
        mainView.textView.isHidden = false
        print("date, " , Date.now)
        for i in 0...tarot.count-1
        {
            mainView.textView.text += "Card Name :  \(tarot[i].name)  \nCard MeaningUp :  \(tarot[i].meaningUp) \nCard MeaningRev : \(tarot[i].meaningRev)  \nCard Type : \(tarot[i].type)  \nCard Suit : \(tarot[i].suit ?? "Missing Value") \nCard Desc : \(tarot[i].desc) \n\n\n"
        }
        
        
        
        
    }
    
}

