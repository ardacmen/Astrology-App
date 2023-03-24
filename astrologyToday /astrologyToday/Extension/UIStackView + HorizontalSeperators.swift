//
//  UIStackView + HorizontalSeperators.swift
//  astrologyToday
//
//  Created by Arda Çimen on 21.03.2023.
//

import Foundation
import UIKit

extension UIStackView {
    func addHorizontalSeparators(color : UIColor) {
        var i = self.arrangedSubviews.count
        while i > 2 {
            let separator = createSeparator(color: color)
            insertArrangedSubview(separator, at: i-2)
            separator.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1).isActive = true
            i -= 1
        }
    }

    private func createSeparator(color : UIColor) -> UIView {
        let separator = UIView()
        separator.heightAnchor.constraint(equalToConstant: 1).isActive = true
        separator.backgroundColor = color
        return separator
    }
}
