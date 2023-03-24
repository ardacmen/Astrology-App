//
//  OnboardingView.swift
//  astrologyToday
//
//  Created by Arda Çimen on 15.03.2023.
//

import UIKit

class SettingsView: UIView {
    
    
    init(){
        super.init(frame: .zero)
        setup()
        setupSubviews()
        layoutConstraint()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setup()
    {
        backgroundColor =   UIColor(red: CGFloat(208.00/255.0), green: CGFloat(253.0/255.0), blue: CGFloat(237.0/255.0), alpha: CGFloat(1.0))
    }
    
    let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    
    let contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    
    // LİNE ONE
    // LİNE ONE
    // LİNE ONE
    // LİNE ONE
    
    lazy var premiumStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                        premiumImageView,
                                        premiumLabel
                                    ])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.backgroundColor = UIColor(red: CGFloat(208.00/255.0), green: CGFloat(253.0/255.0), blue: CGFloat(237.0/255.0), alpha: CGFloat(1.0))
        stack.isLayoutMarginsRelativeArrangement = true
        stack.clipsToBounds = true
        stack.layer.cornerRadius = 15
        stack.layer.borderWidth = 0.5
        stack.layer.borderColor = UIColor.black.cgColor
        
        return stack
    }()
    
    let premiumImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(systemName:
                                    "diamond.circle")?.withTintColor(.black, renderingMode: .alwaysOriginal).withAlignmentRectInsets(UIEdgeInsets(top: -15, left: -25, bottom: -0,
                                                                                                                                                  right: -25))
        return imageView
        
    }()
    
    
    let premiumLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Premium"
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()
    
    lazy var profileStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                        profileImageView,
                                        profileLabel
                                    ])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.backgroundColor = UIColor(red: CGFloat(208.00/255.0), green: CGFloat(253.0/255.0), blue: CGFloat(237.0/255.0), alpha: CGFloat(1.0))
        stack.isLayoutMarginsRelativeArrangement = true
        stack.clipsToBounds = true
        stack.layer.cornerRadius = 15
        stack.layer.borderWidth = 0.5
        stack.layer.borderColor = UIColor.black.cgColor
        return stack
    }()
    
    let profileImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "person")?.withTintColor(.black, renderingMode: .alwaysOriginal).withAlignmentRectInsets(UIEdgeInsets(top: -15, left: -25, bottom: -0,
                                                                                                                                                    right: -25))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
        
    }()
    
    
    let profileLabel : UILabel = {
        let label = UILabel()
        label.text = "Profile"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()
    
    
    
    
    
    lazy var lineOne: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                        premiumStack,
                                        profileStack
                                    ])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 25
        stack.distribution = .fillEqually
        stack.isLayoutMarginsRelativeArrangement = true
        return stack
    }()
    
    
    // LİNE TWO
    // LİNE TWO
    // LİNE TWO
    // LİNE TWO
    
    lazy var fortuneStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                       
                                    ])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.backgroundColor = .white
        stack.isLayoutMarginsRelativeArrangement = true
        stack.clipsToBounds = true
        stack.layer.cornerRadius = 15
        stack.layer.borderWidth = 0.5
        stack.layer.borderColor = UIColor.black.cgColor
        return stack
    }()
    
    let fortuneImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
        
    }()
    
    
    let fortuneLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var  matchStack : UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                        matchImageView,
                                        matchLabel
                                    ])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.backgroundColor = UIColor(red: CGFloat(208.00/255.0), green: CGFloat(253.0/255.0), blue: CGFloat(237.0/255.0), alpha: CGFloat(1.0))
        stack.isLayoutMarginsRelativeArrangement = true
        stack.clipsToBounds = true
        stack.layer.cornerRadius = 15
        stack.layer.borderWidth = 0.5
        stack.layer.borderColor = UIColor.black.cgColor
        return stack
    }()
    
    let  matchImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "heart")?.withTintColor(.black, renderingMode: .alwaysOriginal).withAlignmentRectInsets(UIEdgeInsets(top: -15, left: -25, bottom: -0,
                                                                                                                                                   right: -25))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
        
    }()
    
    
    let matchLabel : UILabel = {
        let label = UILabel()
        label.text = "Love Match"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()
    
    
    
    
    
    lazy var lineTwo: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                        iconStack,
                                        matchStack
                                    ])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 25
        stack.distribution = .fillEqually
        stack.isLayoutMarginsRelativeArrangement = true
        return stack
    }()
    
    // LİNE THREE
    // LİNE THREE
    // LİNE THREE
    // LİNE THREE
    // LİNE THREE
    
    lazy var iconStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                        iconImageView,
                                        iconLabel
                                    ])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.backgroundColor = UIColor(red: CGFloat(208.00/255.0), green: CGFloat(253.0/255.0), blue: CGFloat(237.0/255.0), alpha: CGFloat(1.0))
        stack.isLayoutMarginsRelativeArrangement = true
        stack.clipsToBounds = true
        stack.layer.cornerRadius = 15
        stack.layer.borderWidth = 0.5
        stack.layer.borderColor = UIColor.black.cgColor
        return stack
    }()
    
    let iconImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(systemName:
                                    "xmark.app")?.withTintColor(.black, renderingMode: .alwaysOriginal).withAlignmentRectInsets(UIEdgeInsets(top: -15, left: -25, bottom: -0,
                                                                                                                                             right: -25))
        return imageView
        
    }()
    
    
    let iconLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Select Icon"
        label.numberOfLines = 0
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()
    
    lazy var  languageStack : UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                        languageImageView,
                                        languageLabel
                                    ])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.backgroundColor = UIColor(red: CGFloat(208.00/255.0), green: CGFloat(253.0/255.0), blue: CGFloat(237.0/255.0), alpha: CGFloat(1.0))
        stack.isLayoutMarginsRelativeArrangement = true
        stack.clipsToBounds = true
        stack.layer.cornerRadius = 15
        stack.layer.borderWidth = 0.5
        stack.layer.borderColor = UIColor.black.cgColor
        return stack
    }()
    
    let  languageImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "network")?.withTintColor(.black, renderingMode: .alwaysOriginal).withAlignmentRectInsets(UIEdgeInsets(top: -15, left: -25, bottom: -0,
                                                                                               right: -25))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
        
    }()
    
    
    let languageLabel : UILabel = {
        let label = UILabel()
        label.text = "Select Language"
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()
    
    
    
    lazy var  logoutStack : UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                        logoutImageView,
                                        logoutLabel
                                    ])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.backgroundColor = UIColor(red: CGFloat(208.00/255.0), green: CGFloat(253.0/255.0), blue: CGFloat(237.0/255.0), alpha: CGFloat(1.0))
        stack.isLayoutMarginsRelativeArrangement = true
        stack.clipsToBounds = true
        stack.layer.cornerRadius = 15
        stack.layer.borderWidth = 0.5
        stack.layer.borderColor = UIColor.black.cgColor
        return stack
    }()
    
    let logoutImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "return.left")?.withTintColor(.black, renderingMode: .alwaysOriginal).withAlignmentRectInsets(UIEdgeInsets(top: -15, left: -25, bottom: -0,
                                                                                               right: -25))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
        
    }()
    
    
    let logoutLabel : UILabel = {
        let label = UILabel()
        label.text = "logout"
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()
 
    
    lazy var lineThree: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                        languageStack,
                                        logoutStack
                                    ])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 25
        stack.distribution = .fillEqually
        stack.isLayoutMarginsRelativeArrangement = true
        return stack
    }()
    
    
    
    lazy var mainVStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                        lineOne,
                                        lineTwo,
                                        lineThree
                                    ])
        stack.spacing = 25
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.isLayoutMarginsRelativeArrangement = true
        return stack
    }()
    
    private func setupSubviews()
    {
        addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(mainVStackView)
    }
    
    private  func  layoutConstraint() {
        
        var padding: UIEdgeInsets = .zero
        
        let widthSize = (UIScreen.main.bounds.width - 125) / 2
        padding.top =  0
        padding.left = 50
        padding.bottom = 16
        padding.right = 50
        
        
        NSLayoutConstraint.activate([
            
            
            scrollView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            scrollView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            scrollView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            scrollView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            
            
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 0),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: 0),
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 0),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 0),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 0),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor, constant: 0),
            
            mainVStackView.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor, constant: padding.left),
            mainVStackView.trailingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.trailingAnchor, constant: -padding.right),
            mainVStackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: padding.top),
            mainVStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -padding.bottom),
            
            premiumStack.heightAnchor.constraint(equalToConstant: widthSize + 30),
            profileStack.heightAnchor.constraint(equalToConstant: widthSize + 30),
            matchStack.heightAnchor.constraint(equalToConstant: widthSize + 30),
            languageStack.heightAnchor.constraint(equalToConstant: widthSize + 30),
            iconStack.heightAnchor.constraint(equalToConstant: widthSize + 30 )
            
            
            
        ])
        
        
        
        
        
        
    }
    
    
    
    
    
    
}







