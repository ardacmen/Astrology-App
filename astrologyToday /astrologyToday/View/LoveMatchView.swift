//
//  OnboardingView.swift
//  astrologyToday
//
//  Created by Arda Çimen on 15.03.2023.
//

import UIKit

class LoveMatchView: UIView {
    
    
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
    
    let titleLabel : UILabel = {
        let label = UILabel()
        label.text = "Enter names and Calculate!"
        label.textColor = .black
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 24.0, weight: UIFont.Weight(rawValue: 750.0))
        return label
    }()
    
    let textField1 : UITextField = {
        let tf = UITextField()
        tf.attributedPlaceholder = NSAttributedString(
            string: " Enter 1. name ",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.black]
        )
        tf.backgroundColor = .white
        tf.clipsToBounds = true
        tf.layer.cornerRadius = 10
        tf.textColor = .black
        tf.layer.borderWidth = 0.5
        tf.layer.borderColor    = UIColor.black.cgColor
        return tf
    }()
    
    let textField2 : UITextField = {
        let tf = UITextField()
        tf.attributedPlaceholder = NSAttributedString(
            string: " Enter 2. name ",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.black]
        )
        tf.backgroundColor = .white
        tf.textColor = .black
        tf.clipsToBounds = true
        tf.layer.cornerRadius = 10
        tf.layer.borderWidth = 0.5
        tf.layer.borderColor    = UIColor.black.cgColor
        return tf
    }()
    
    let submitButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.setTitle("Calculate Match!", for: .normal)
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    let textView : UITextView = {
        let tw = UITextView()
        tw.textColor = .black
        tw.backgroundColor = .white
        tw.font = .systemFont(ofSize: 25.0)
        return tw
    }()
    
    lazy var mainVStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                        titleLabel,
                                        textField1,
                                        textField2,
                                        submitButton,
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
        
        
        padding.top =  16
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
            textField1.heightAnchor.constraint(equalToConstant: 40.0),
            textField2.heightAnchor.constraint(equalToConstant: 40.0),
            submitButton.heightAnchor.constraint(equalToConstant: 40.0),
            textView.heightAnchor.constraint(equalToConstant: 300.0)
            
            
        ])
    }
}







