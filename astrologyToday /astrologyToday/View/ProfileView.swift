//
//  OnboardingView.swift
//  astrologyToday
//
//  Created by Arda Çimen on 15.03.2023.
//

import UIKit

class ProfileView : UIView {
    
    
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
    
    
    let signLabel: UILabel = {
        let label = UILabel()
        label.text = "LEO"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = .systemFont(ofSize: 30.0, weight: UIFont.Weight(rawValue: 750.0))
        return label
    }()
    
    let emailLabel: UILabel = {
        let label = UILabel()
        label.text = "Email"
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let emailTextField : UITextField = {
        let tf = UITextField()
        tf.attributedPlaceholder = NSAttributedString(
            string: " E-Mail ",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.black]
        )
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.textColor = .black
        return tf
    }()
    
    
    lazy var emailStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                      emailLabel,
                                      emailTextField
                                    ])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 20
        stack.distribution = .fillEqually
        stack.isLayoutMarginsRelativeArrangement = true
        return stack
    }()
    
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Name"
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let nameTextField : UITextField = {
        let tf = UITextField()
        tf.attributedPlaceholder = NSAttributedString(
            string: " Name ",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.black]
        )
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.textColor = .black
        return tf
    }()
    
    
    lazy var nameStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                      nameLabel,
                                      nameTextField
                                    ])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 20
        stack.distribution = .fillEqually
        stack.isLayoutMarginsRelativeArrangement = true
        return stack
    }()
    
    let genderLabel: UILabel = {
        let label = UILabel()
        label.text = "Gender"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        return label
    }()
    
    let genderTextField : UITextField = {
        let tf = UITextField()
        tf.attributedPlaceholder = NSAttributedString(
            string: " Gender ",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.black]
        )
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.textColor = .black
        return tf
    }()
    
    
    lazy var genderStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                      genderLabel,
                                      genderTextField
                                    ])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 20
        stack.distribution = .fillEqually
        stack.isLayoutMarginsRelativeArrangement = true
        return stack
    }()
    
    let relationshipLabel: UILabel = {
        let label = UILabel()
        label.text = "RelationShip"
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let RelationShipTextField : UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.attributedPlaceholder = NSAttributedString(
            string: " RelationShip ",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.black]
        )
        tf.textColor = .black
        return tf
    }()
    
    
    lazy var RelationShipStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                      relationshipLabel,
                                      RelationShipTextField
                                    ])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 20
        stack.distribution = .fillEqually
        stack.isLayoutMarginsRelativeArrangement = true
        return stack
    }()
    
    let workstatusLabel: UILabel = {
        let label = UILabel()
        label.text = "WorkStatus"
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let workstatusTextField : UITextField = {
        let tf = UITextField()
        tf.attributedPlaceholder = NSAttributedString(
            string: " WorkStatus ",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.black]
        )
        tf.textColor = .black
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    
    lazy var workstatusShipStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                      workstatusLabel,
                                      workstatusTextField
                                    ])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 20
        stack.distribution = .fillEqually
        stack.isLayoutMarginsRelativeArrangement = true
        return stack
    }()
    
    
    
    let birthdayLabel: UILabel = {
        let label = UILabel()
        label.text = "Birthday"
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let birthdayDatePicker : UIDatePicker = {
        let date = UIDatePicker()
        date.translatesAutoresizingMaskIntoConstraints = false
        date.timeZone = NSTimeZone.local
        return date
    }()
    
    
    lazy var birthdayStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                      birthdayLabel,
                                      birthdayDatePicker
                                    ])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 20
        stack.distribution = .fillEqually
        stack.isLayoutMarginsRelativeArrangement = true
        return stack
    }()
    
 
    
    
    let deleteButton : UIButton = {
       let button = UIButton()
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Delete Account", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let changePassword : UIButton = {
       let button = UIButton()
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Change Password", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let saveButton : UIButton = {
       let button = UIButton()
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Save", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
  
    
   
    
    
    lazy var buttonsStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                        deleteButton,
                                        changePassword,
                                        saveButton
                                    ])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 7
        stack.isLayoutMarginsRelativeArrangement = true
        return stack
    }()
   
    lazy var mainVStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                       signLabel,
                                       emailStack,
                                       nameStack,
                                       genderStack,
                                       RelationShipStack,
                                       workstatusShipStack,
                                       birthdayStack,
                                       buttonsStack,
                                    ])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 7
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
            
            
            signLabel.heightAnchor.constraint(equalToConstant: 100.0),
            emailStack.heightAnchor.constraint(equalToConstant: 50.0),
            genderStack.heightAnchor.constraint(equalToConstant: 50.0),
            RelationShipStack.heightAnchor.constraint(equalToConstant: 50.0),
            workstatusShipStack.heightAnchor.constraint(equalToConstant: 50.0),
            birthdayStack.heightAnchor.constraint(equalToConstant: 50.0),
            deleteButton.heightAnchor.constraint(equalToConstant: 50.0),
            changePassword.heightAnchor.constraint(equalToConstant: 50.0),
            saveButton.heightAnchor.constraint(equalToConstant: 50.0),
            nameStack.heightAnchor.constraint(equalToConstant: 50.0)
           
           
            
        ])
    }
}








