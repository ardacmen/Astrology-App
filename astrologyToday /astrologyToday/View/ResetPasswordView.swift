//
//  OnboardingView.swift
//  astrologyToday
//
//  Created by Arda Çimen on 15.03.2023.
//

import UIKit

class ResetPasswordView: UIView {
    
    
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
        label.text = "Reset Password"
        label.textColor = .black
        label.numberOfLines = 0
        return label
    }()
   
    
    lazy var labelsStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                        label,
                                       
                                    ])
        stack.spacing = 15
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.distribution = .fillProportionally
        stack.axis = .vertical
        stack.isLayoutMarginsRelativeArrangement = true
        return stack
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
    
    let passwordAgain : UITextField = {
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
            string: " Password Again",
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
                                        password,
                                        passwordAgain
                                        
                                    ])
        stack.spacing = 15
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.distribution = .fillProportionally
        stack.axis = .vertical
        stack.isLayoutMarginsRelativeArrangement = true
        return stack
    }()
    
   
    
    let confirmButton : UIButton = {
        let button = UIButton()
        button.setTitle("Confirm", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.borderColor = .none
        button.clipsToBounds = true
        button.layer.cornerRadius = 10
        return button
    }()
    
    
    
   
   
    
   
    
   
    lazy var downSide: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                        confirmButton
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
            password.heightAnchor.constraint(equalToConstant: 30.0),
            passwordAgain.heightAnchor.constraint(equalToConstant: 30.0)
            
        ])
        
        
        
        
        
        
    }
    
    
    
    
    
    
}




