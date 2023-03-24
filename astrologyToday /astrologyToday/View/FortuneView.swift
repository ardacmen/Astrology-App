//
//  OnboardingView.swift
//  astrologyToday
//
//  Created by Arda Çimen on 15.03.2023.
//

import UIKit

class FortuneView: UIView {
    
    
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
    
    let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    
    let contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    
    let allButton : UIButton = {
        let button = UIButton()
        button.setTitle("All", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .white
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.borderWidth = 0.5
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let bibleButton : UIButton = {
        let button = UIButton()
        button.setTitle("Bible", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .white
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.borderWidth = 0.5
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let cookieButton : UIButton = {
        let button = UIButton()
        button.setTitle("Cookie", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .white
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.borderWidth = 0.5
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let peopleButton : UIButton = {
        let button = UIButton()
        button.setTitle("People", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .white
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.borderWidth = 0.5
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let scienceButton : UIButton = {
        let button = UIButton()
        button.setTitle("Science", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .white
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.borderWidth = 0.5
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    let againButton : UIButton = {
        let button = UIButton()
        button.setTitle("One More Cookie", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.borderWidth = 0.5
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    lazy var buttonsStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                        allButton,
                                        bibleButton,
                                        cookieButton,
                                        peopleButton,
                                        scienceButton
                                    ])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 2
        stack.distribution = .fillEqually
        stack.isLayoutMarginsRelativeArrangement = true
        return stack
    }()
    
    let imageView : UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "fortune-cookie.png")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let label : UILabel = {
        let label = UILabel()
        label.text = "Click 3 times for read"
        label.textColor = .black
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let textView : UITextView = {
        let textView = UITextView()
        textView.backgroundColor = UIColor(red: CGFloat(208.00/255.0), green: CGFloat(253.0/255.0), blue: CGFloat(237.0/255.0), alpha: CGFloat(1.0))
        textView.textColor = .black
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.isEditable  = false
        textView.font = .systemFont(ofSize: 20.0)
        return textView
    }()
    
    lazy var mainVStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                        buttonsStackView,
                                        imageView,
                                        label,
                                        textView,
                                        againButton
                                    ])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.isLayoutMarginsRelativeArrangement = true
        stack.axis = .vertical
        stack.spacing = 30
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
        
        
        
        padding.top =  0
        padding.left = 16
        padding.bottom = 16
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
            buttonsStackView.heightAnchor.constraint(equalToConstant: 40.0),
            imageView.heightAnchor.constraint(equalToConstant: 300.0),
            textView.heightAnchor.constraint(equalToConstant: 400.0),
            againButton.heightAnchor.constraint(equalToConstant: 40.0),
            label.heightAnchor.constraint(equalToConstant: 40.0)
            
            
            
        ])
        
        
    }
    
    
}







