//
//  StringDate + Convertor.swift
//  astrologyToday
//
//  Created by Arda Çimen on 21.03.2023.
//


import Foundation



public enum Zodiac {
    case Aries
    case Taurus
    case Gemini
    case Cancer
    case Leo
    case Virgo
    case Libra
    case Scorpio
    case Sagittarius
    case Capricorn
    case Aquarius
    case Pisces
    case Undefined
}

extension Date {
    public var zodiac: Zodiac {
        guard let gregorianCalendar = NSCalendar(calendarIdentifier: NSCalendar.Identifier.gregorian)
            else { return .Undefined }
        
        let dateComponents = gregorianCalendar.components([.month, .day], from: self)
        
        let month = dateComponents.month
        let day = dateComponents.day
        
        switch (month!, day!) {
        case (3, 21...31), (4, 1...19):
            return .Aries
        case (4, 20...30), (5, 1...20):
            return .Taurus
        case (5, 21...31), (6, 1...20):
            return .Gemini
        case (6, 21...30), (7, 1...22):
            return .Cancer
        case (7, 23...31), (8, 1...22):
            return .Leo
        case (8, 23...31), (9, 1...22):
            return .Virgo
        case (9, 23...30), (10, 1...22):
            return .Libra
        case (10, 23...31), (11, 1...21):
            return .Scorpio
        case (11, 22...30), (12, 1...21):
            return .Sagittarius
        case (12, 22...31), (1, 1...19):
            return .Capricorn
        case (1, 20...31), (2, 1...18):
            return .Aquarius
        case (2, 19...29), (3, 1...20):
            return .Pisces
        default:
            return .Undefined
        }
    }
}

extension String {

    func toDate(withFormat format: String = "yyyy-MM-dd HH:mm:ss")-> Date?{

        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "tr-TR")
        dateFormatter.calendar = Calendar(identifier: .gregorian)
        dateFormatter.dateFormat = format
        let date = dateFormatter.date(from: self)

        return date

    }
}

