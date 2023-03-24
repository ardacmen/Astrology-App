//
//  OnboardingView.swift
//  astrologyToday
//
//  Created by Arda Çimen on 15.03.2023.
//

import UIKit

class OnboardingView: UIView {
    
    
    
    
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
       backgroundColor =  UIColor(red: CGFloat(208.00/255.0), green: CGFloat(253.0/255.0), blue: CGFloat(237.0/255.0), alpha: CGFloat(1.0))
    }
    
    let contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
   
    let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    
    
    let imageView : UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named:
        "astrology.png")?.withAlignmentRectInsets(UIEdgeInsets(top: -25, left: -25, bottom: -25,
        right: -25))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var imageStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                        imageView
                                    ])
        stack.spacing = 20
        stack.backgroundColor = UIColor(red: CGFloat(208.00/255.0), green: CGFloat(53.0/255.0), blue: CGFloat(237.0/255.0), alpha: CGFloat(1.0))
        stack.clipsToBounds = true
        stack.layer.cornerRadius   = 30
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.isLayoutMarginsRelativeArrangement = true
        return stack
    }()
    
    let titleLabel : UILabel = {
        let label = UILabel()
        label.text = "Learn Your Daily Horoscope!"
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 20.0, weight: .bold)
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()
   
    let subTitleLabel : UILabel = {
        let label = UILabel()
        label.text = "Free and Simple, Select Horoscope and Read Daily!"
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 17.0, weight: .light)
        label.textColor = .lightGray
        label.textAlignment = .center
        return label
    }()
    
    let registerButton : UIButton = {
       let button = UIButton()
        button.backgroundColor = UIColor.white
        button.setTitle("Register", for: .normal)
        button.layer.cornerRadius = 10
        button.clipsToBounds = true
        button.setTitleColor(UIColor.black, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let signInButton : UIButton = {
       let button = UIButton()
        button.backgroundColor = UIColor.white
        button.setTitle("Sign In", for: .normal)
        button.layer.cornerRadius = 10
        button.clipsToBounds = true
        button.setTitleColor(UIColor.black, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    lazy var buttons: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                        registerButton,
                                        signInButton
                                    ])
        stack.spacing = 15
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.isLayoutMarginsRelativeArrangement = true
        return stack
    }()
    
    lazy var titles: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                        titleLabel,
                                        subTitleLabel
                                    ])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.isLayoutMarginsRelativeArrangement = true
        return stack
    }()
    lazy var mainVStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                        imageStackView,
                                        titles,
                                        buttons
                                    ])
        stack.spacing = 28
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.distribution = .fillProportionally
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
        
        
        padding.top = ( UIScreen.main.bounds.height - 530 ) / 5
        padding.left = 16
        padding.bottom = 0
        padding.right = 16
        
        
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
            imageView.heightAnchor.constraint(equalToConstant: 350.0),
            titles.heightAnchor.constraint(equalToConstant: 120.0),
            signInButton.heightAnchor.constraint(equalToConstant: 60.0),
            registerButton.heightAnchor.constraint(equalToConstant: 60.0)
            
            
        ])
        
        
        
        
        
        
    }
    
    
    
    
    
    
}


