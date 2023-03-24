//
//  OnboardingView.swift
//  astrologyToday
//
//  Created by Arda Çimen on 15.03.2023.
//

import UIKit

class SigninView: UIView {
    
    
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
    
    let label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 30.0, weight: .bold)
        label.text = "Wellcome again!"
        label.textColor = .black
        label.numberOfLines = 0
        return label
    }()
    
    let subLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 20.0, weight: .light)
        label.text = "We miss you, sign in and read your daily horoscope."
        label.textColor = .black
        label.numberOfLines = 0
        return label
    }()
    
    
    lazy var labelsStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                        label,
                                        subLabel
                                    ])
        stack.spacing = 15
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.distribution = .fillProportionally
        stack.axis = .vertical
        stack.isLayoutMarginsRelativeArrangement = true
        return stack
    }()
    
    
    let email : UITextField = {
        let  textfield = UITextField()
        textfield.translatesAutoresizingMaskIntoConstraints = false
        textfield.leftViewMode = UITextField.ViewMode.always
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        let image = UIImage(systemName: "at")?.withRenderingMode(.alwaysTemplate)
        imageView.image = image
        imageView.tintColor = .black
        textfield.textColor = .black
        textfield.attributedPlaceholder = NSAttributedString(
            string: " Email",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.black]
        )
        textfield.leftView = imageView
        var bottomLine = CALayer()
        bottomLine.frame =  CGRect(x: 0.0, y: 33, width: UIScreen.main.bounds.width - 32, height: 1.5)
        bottomLine.backgroundColor = UIColor.black.cgColor
        textfield.borderStyle = UITextField.BorderStyle.none
        textfield.layer.addSublayer(bottomLine)
        return textfield
    }()
    
    let password : UITextField = {
        let  textfield = UITextField()
        textfield.translatesAutoresizingMaskIntoConstraints = false
        textfield.leftViewMode = UITextField.ViewMode.always
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        let image = UIImage(systemName: "lock")?.withRenderingMode(.alwaysTemplate)
        imageView.image = image
        imageView.tintColor = .black
        textfield.leftView = imageView
        textfield.textColor = .black
        textfield.attributedPlaceholder = NSAttributedString(
            string: " Password",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.black]
        )
        var bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0.0, y: 33, width: UIScreen.main.bounds.width - 32 , height: 1.5)
        bottomLine.backgroundColor = UIColor.black.cgColor
        textfield.borderStyle = UITextField.BorderStyle.none
        textfield.layer.addSublayer(bottomLine)
        return textfield
    }()
    
    
    lazy var textFields: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                        email,
                                        password
                                    ])
        stack.spacing = 15
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.distribution = .fillProportionally
        stack.axis = .vertical
        stack.isLayoutMarginsRelativeArrangement = true
        return stack
    }()
    
    let  forgotButton : UIButton = {
        let button = UIButton()
        button.setTitle("Forgot Password?", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(.systemBlue, for: .normal)
        button.layer.borderColor = .none
        button.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.right
        return button
    }()
    
    let loginButton : UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.borderColor = .none
        button.clipsToBounds = true
        button.layer.cornerRadius = 10
        return button
    }()
    
    let areYouNewButton : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(.black, for: .normal)
        button.layer.borderColor = .none
        let string1 = "Are You New?"
        let string2 = " Register"

        let att = NSMutableAttributedString(string: "\(string1)\(string2)");
        att.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.black, range: NSRange(location: 0, length: string1.count))
        att.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.systemBlue, range: NSRange(location: string1.count, length: string2.count))
        button.setAttributedTitle(att, for: .normal)
        return button
    }()
    
   
   
    
   
    
   
    lazy var downSide: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                        forgotButton,
                                        loginButton,
                                        areYouNewButton,
                                    ])
        stack.spacing = 15
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.distribution = .fillProportionally
        stack.axis = .vertical
        stack.isLayoutMarginsRelativeArrangement = true
        return stack
    }()
    
    lazy var mainVStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                        labelsStackView,
                                        textFields,
                                        downSide
                                    ])
        stack.spacing = 50
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
        
        
        padding.top =  100
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
            email.heightAnchor.constraint(equalToConstant: 30.0),
            password.heightAnchor.constraint(equalToConstant: 30.0)
            
        ])
        
        
        
        
        
        
    }
    
    
    
    
    
    
}



