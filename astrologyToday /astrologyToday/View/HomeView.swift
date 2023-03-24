//
//  OnboardingView.swift
//  astrologyToday
//
//  Created by Arda Çimen on 15.03.2023.
//

import UIKit

class HomeView: UIView {
    
    
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
        return view
    }()
    
    
    let selectSignImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.isUserInteractionEnabled = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(systemName:
                                    "nosign.app")?.withAlignmentRectInsets(UIEdgeInsets(top: -25, left: -25, bottom: -15,
                                                                                        right: -25))
        return imageView
        
    }()
    
    
    let selectSignLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Select Your Sign"
        label.font = .systemFont(ofSize: 22.0, weight: .bold)
        label.numberOfLines = 0
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()
    
    let askButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.setTitle("Ask", for: .normal)
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    let fortuneImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        let image = UIImage(systemName:
                                "florinsign")?.withTintColor(.black, renderingMode: .alwaysOriginal).withAlignmentRectInsets(UIEdgeInsets(top: -15, left: -25, bottom: -25,
                                                                                                                                           right: -25))
        imageView.image = image
        return imageView
        
    }()
    
    
 
    
    let fortuneButton : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Fortune Cookie", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.clipsToBounds = true
        button.backgroundColor = .white
        button.layer.cornerRadius = 10
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.borderWidth = 0.5
        return button
    }()
    
    lazy var fortuneStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                     fortuneImageView,
                                     fortuneButton
                                    ])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fillProportionally
        stack.spacing = 10
        stack.isLayoutMarginsRelativeArrangement = true
        return stack
    }()
    
    lazy var emptyStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                     
                                    ])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 0
        stack.isLayoutMarginsRelativeArrangement = true
        return stack
    }()
    
    lazy var selectSignStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                        selectSignLabel,
                                        selectSignImageView
                                    ])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.spacing = 0
        stack.isLayoutMarginsRelativeArrangement = true
        return stack
    }()
    
    
    lazy var lineOne: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                        selectSignStack
                                    ])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.isLayoutMarginsRelativeArrangement = true
        return stack
    }()
    
    lazy var lineTwo: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                      emptyStack,
                                      fortuneStack
                                    ])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.isLayoutMarginsRelativeArrangement = true
        return stack
    }()
    
    lazy var buttonsStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                      yesterdayButton,
                                      todayButton,
                                      tomorrowButton
                                    ])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 2
        stack.distribution = .fillEqually
        stack.isLayoutMarginsRelativeArrangement = true
        return stack
    }()
    
    let yesterdayButton : UIButton = {
       let button = UIButton()
        button.setTitle("Yesterday", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .white
        button.clipsToBounds    = true
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.borderWidth = 0.5
        return button
    }()
    
    let todayButton : UIButton = {
       let button = UIButton()
        button.setTitle("Today", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .white
        button.clipsToBounds    = true
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.borderWidth = 0.5
        return button
    }()
    
    let tomorrowButton : UIButton = {
       let button = UIButton()
        button.setTitle("Tomorrow", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .white
        button.clipsToBounds    = true
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.borderWidth = 0.5
        return button
    }()
    
    let textView : UITextView = {
       let tf = UITextView()
        tf.backgroundColor = UIColor(red: CGFloat(208.00/255.0), green: CGFloat(253.0/255.0), blue: CGFloat(237.0/255.0), alpha: CGFloat(1.0))
        tf.textColor = .black
        tf.font = .systemFont(ofSize: 20)
       return tf
    }()
    
    lazy var mainVStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                       lineOne,
                                       lineTwo,
                                       buttonsStack,
                                       askButton,
                                       textView
                                    ])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 20
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
        
        padding.top =  2
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
            selectSignStack.heightAnchor.constraint(equalToConstant: 160.0),
            fortuneStack.heightAnchor.constraint(equalToConstant: 160.0),
            fortuneButton.heightAnchor.constraint(equalToConstant: 30.0),
            buttonsStack.heightAnchor.constraint(equalToConstant: 50.0),
            textView.heightAnchor.constraint(equalToConstant: 350.0)
            
        ])
        
        
        
        
        
        
    }
    
    
    
    
    
    
}






