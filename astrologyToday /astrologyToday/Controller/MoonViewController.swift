//
//  MoonViewController.swift
//  astrologyToday
//
//  Created by Arda Çimen on 23.03.2023.
//

import UIKit
import iOSDropDown

class MoonViewController: UIViewController {
    
    let mainView = MoonView()
    
   
    
    override func loadView() {
        self.view = mainView
    }
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let dateString = dateFormatter.string(from: Date.now)
        moonPhase(date: dateString)
        mainView.resultLabel.isHidden   = true
        addActionToElement()
    }
    
    func moonPhase(date: String){
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let date = dateFormatter.date(from: date)
        let julianDate = date!.timeIntervalSince1970 / 86400.0 + 2440587.5
        let phase = (1 - cos((julianDate - 2451550.1) * 2 * .pi / 29.53)) / 2
        
        if phase >= 0 && phase < 0.1{
            print(phase)
            mainView.imageView.image = UIImage(named: "moon8.png")
        }else if phase >= 0.1 && phase < 0.245{
            print(phase)
            mainView.imageView.image = UIImage(named: "moon6.png")
        }else if phase >= 0.245 && phase < 0.255{
            print(phase)
            mainView.imageView.image = UIImage(named: "moon5.png")
        }else if phase >= 0.255 && phase < 0.49{
            print(phase)
            mainView.imageView.image = UIImage(named: "moon7.png")
        }else if phase >= 0.49 && phase < 0.51{
            print(phase)
            mainView.imageView.image = UIImage(named: "moon3.png")
        }else if phase >= 0.51 && phase < 0.745{
            print(phase)
            mainView.imageView.image = UIImage(named: "moon2.png")
        }else if phase >= 0.745 && phase < 0.76{
            print(phase)
            mainView.imageView.image = UIImage(named: "moon4.png")
        }else if phase >= 0.76 && phase <= 1{
            print(phase)
            mainView.imageView.image = UIImage(named: "moon1.png")
        }else{
            print(phase)
            self.makeAlert(titleInput: "Error.", messageInput: "Try again Later")
        }
        
    }
    
    func addActionToElement(){
        
        mainView.calculateButton.addAction(UIAction{ [weak self] _ in
            
            self?.sendParameterToFunc()
            
        }, for: .touchUpInside)
        
    }
    
    func sendParameterToFunc(){
        
        if mainView.dayTF.text != "" && mainView.monthTF.text != "" && mainView.yearTF.text != "" && mainView.hour.text != "" && mainView.minute.text != "" {
            print("debug1")
            let date = "\(mainView.yearTF.text!)-\(mainView.monthTF.text!)-\(mainView.dayTF.text!) \(mainView.hour.text!):\(mainView.minute.text!):30 +0000"
            print(date)
            let dateFormatter = DateFormatter()
            let realDate = dateFormatter.date(from: date) ?? Date.now
            print(realDate)
            mainView.resultLabel.isHidden = false
            mainView.resultLabel.text = "  Your Moon Zodiac Sign,\n  (without birthplace )" +  calculateMoonZodiacSign(for: realDate)
        }else{
            self.makeAlert(titleInput: "Error!", messageInput: "Please Fill The Empty Field/s")
        }
        
        
    }
    
    
    func calculateMoonZodiacSign(for date: Date) -> String {
        let calendar = Calendar.current
        let components = calendar.dateComponents([.year, .month, .day], from: date)
        let year = components.year!
        let month = components.month!
        let day = components.day!
        
        let julianDate = calculateJulianDate(year: year, month: month, day: day)
        let moonPhase = calculateMoonPhase(julianDate: julianDate)
        
        let a = (14 - month) / 12
        let y = moonPhase.year + 4800 - a
        let m = month + 12 * a - 3
        let jd = day + (153 * m + 2) / 5 + 365 * y + y / 4 - y / 100 + y / 400 - 32045
        
        let offset = jd - 2451545
        let zodiacIndex = (offset / 30 + 8) % 12
        
        let zodiacSigns = [
            "Aries", "Taurus", "Gemini", "Cancer", "Leo", "Virgo", "Libra",
            "Scorpio", "Sagittarius", "Capricorn", "Aquarius", "Pisces"
        ]
        print("index " , zodiacIndex)
        let zodiacSign = zodiacSigns[zodiacIndex]
        
        return zodiacSign
    }
    
    func calculateJulianDate(year: Int, month: Int, day: Int) -> Double {
        let a = floor((14.0 - Double(month)) / 12.0)
        let y = Double(year) + 4800.0 - a
        let m = Double(month) + 12.0 * a - 3.0
        let jd = Double(day) + floor((153.0 * m + 2.0) / 5.0) + 365.0 * y + floor(y / 4.0) - 32083.5
        return jd
    }
    
    func calculateMoonPhase(julianDate: Double) -> (year: Int, month: Int, day: Int) {
        let k = floor((julianDate - 2451550.1) / 29.530588853)
        let t = (julianDate - 2451550.1) / 29.530588853
        let t2 = t * t
        let t3 = t2 * t
        let jde = 2451550.1 + k * 29.530588853
        + 0.0001337 * t2
        - 0.000000150 * t3
        + 0.00000000073 * t2 * t2
        let f = (julianDate - jde) / 29.530588853
        let ip = floor(f * 8 + 0.5) / 8
        let ag = f * 29.530588853 + 0.5 - ip * 29.530588853
        let ag2 = round(ag * 100000) / 100000
        
        let year = Int(floor(jde - 2451549.5))
        let dateComponents = DateComponents(year: year, month: 1, day: 1)
        let calendar = Calendar.current
        guard let startOfYear = calendar.date(from: dateComponents) else {
            fatalError("Error getting start of year")
        }
        
        guard let moonDate = calendar.date(byAdding: .day, value: Int(ag2 * 30), to: startOfYear) else {
            fatalError("Error calculating moon date")
        }
        
        let moonComponents = calendar.dateComponents([.year, .month, .day], from: moonDate)
        return (moonComponents.year!, moonComponents.month!, moonComponents.day!)
        
    }
    
    
}
