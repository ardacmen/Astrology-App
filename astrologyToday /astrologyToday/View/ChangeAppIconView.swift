//
//  OnboardingView.swift
//  astrologyToday
//
//  Created by Arda Çimen on 15.03.2023.
//

import UIKit

class ChangeAppIconView: UIView {
    
    
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
    
    
    
    // LİNE ONE
    // LİNE ONE
    // LİNE ONE
    // LİNE ONE
    
    lazy var ariesStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                        
                                        ariesImageView
                                        
                                    ])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.backgroundColor = .white
        stack.isLayoutMarginsRelativeArrangement = true
        stack.clipsToBounds = true
        stack.layer.cornerRadius = 0
        return stack
    }()
    
    
    
    let ariesImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.isUserInteractionEnabled = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named:
                                    "aries.png")?.withAlignmentRectInsets(UIEdgeInsets(top: -25, left: -25, bottom: -25,
                                                                                       right: -25))
        return imageView
        
    }()
    
    
    
    lazy var geminiStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                        
                                        geminiImageView
                                        
                                    ])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.backgroundColor = .white
        stack.distribution = .fillEqually
        stack.backgroundColor = .white
        stack.isLayoutMarginsRelativeArrangement = true
        stack.clipsToBounds = true
        stack.layer.cornerRadius = 0
        return stack
    }()
    
    
    
    let geminiImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named:
                                    "gemini.png")?.withAlignmentRectInsets(UIEdgeInsets(top: -25, left: -25, bottom: -25,
                                                                                        right: -25))
        imageView.isUserInteractionEnabled = true
        return imageView
        
    }()
    
    
    lazy var taurusStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                        
                                        taurusImageView
                                        
                                    ])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.backgroundColor = .white
        stack.distribution = .fillEqually
        stack.backgroundColor = .white
        stack.isLayoutMarginsRelativeArrangement = true
        stack.clipsToBounds = true
        stack.layer.cornerRadius = 0
        return stack
    }()
    
    
    
    let taurusImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.isUserInteractionEnabled = true
        imageView.image = UIImage(named:
                                    "taurus.png")?.withAlignmentRectInsets(UIEdgeInsets(top: -25, left: -25, bottom: -25,
                                                                                        right: -25))
        return imageView
        
    }()
    
    
    
    
    
    
    lazy var lineOne: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                        ariesStack,
                                        taurusStack,
                                        geminiStack
                                    ])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 1
        stack.distribution = .fillEqually
        stack.isLayoutMarginsRelativeArrangement = true
        return stack
    }()
    
    
    // LİNE TWO
    // LİNE TWO
    // LİNE TWO
    // LİNE TWO
    
    lazy var cancerStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                        
                                        cancerImageView
                                        
                                    ])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.backgroundColor = .white
        stack.isLayoutMarginsRelativeArrangement = true
        stack.clipsToBounds = true
        stack.layer.cornerRadius = 0
        return stack
    }()
    
    
    
    let cancerImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.isUserInteractionEnabled = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named:
                                    "cancer.png")?.withAlignmentRectInsets(UIEdgeInsets(top: -25, left: -25, bottom: -25,
                                                                                        right: -25))
        return imageView
        
    }()
    
    
    
    lazy var leoStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                        
                                        leoImageView
                                        
                                    ])
        stack.backgroundColor = .white
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.backgroundColor = .white
        stack.isLayoutMarginsRelativeArrangement = true
        stack.clipsToBounds = true
        stack.layer.cornerRadius = 0
        return stack
    }()
    
    
    
    let leoImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.isUserInteractionEnabled = true
        imageView.image = UIImage(named:
                                    "leo.png")?.withAlignmentRectInsets(UIEdgeInsets(top: -25, left: -25, bottom: -25,
                                                                                     right: -25))
        return imageView
        
    }()
    
    
    
    lazy var virgoStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                        
                                        virgoImageView
                                        
                                    ])
        stack.backgroundColor = .white
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.backgroundColor = .white
        stack.isLayoutMarginsRelativeArrangement = true
        stack.clipsToBounds = true
        stack.layer.cornerRadius = 0
        return stack
    }()
    
    
    
    let virgoImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.isUserInteractionEnabled = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named:
                                    "virgo.png")?.withAlignmentRectInsets(UIEdgeInsets(top: -25, left: -25, bottom: -25,
                                                                                       right: -25))
        return imageView
        
    }()
    
    
    
    
    
    lazy var lineTwo: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                        cancerStack,
                                        leoStack,
                                        virgoStack
                                    ])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 1
        stack.distribution = .fillEqually
        stack.isLayoutMarginsRelativeArrangement = true
        return stack
    }()
    
    
    
    // LİNE THREE
    // LİNE THREE
    // LİNE THREE
    // LİNE THREE
    // LİNE THREE
    
    lazy var libraStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                        
                                        libraImageView
                                        
                                    ])
        stack.backgroundColor = .white
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.backgroundColor = .white
        stack.isLayoutMarginsRelativeArrangement = true
        stack.clipsToBounds = true
        stack.layer.cornerRadius = 0
        return stack
    }()
    
    
    
    let libraImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.isUserInteractionEnabled = true
        imageView.image = UIImage(named:
                                    "libra.png")?.withAlignmentRectInsets(UIEdgeInsets(top: -25, left: -25, bottom: -25,
                                                                                       right: -25))
        return imageView
        
    }()
    
    
    
    
    lazy var scorpioStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                        
                                        scorpioImageView
                                        
                                    ])
        stack.backgroundColor = .white
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.backgroundColor = .white
        stack.isLayoutMarginsRelativeArrangement = true
        stack.clipsToBounds = true
        stack.layer.cornerRadius = 0
        return stack
    }()
    
    
    
    let scorpioImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.isUserInteractionEnabled = true
        imageView.image = UIImage(named:
                                    "scorpio.png")?.withAlignmentRectInsets(UIEdgeInsets(top: -25, left: -25, bottom: -25,
                                                                                          right: -25))
        return imageView
        
    }()
    
    
    
    
    lazy var sagittariusStack : UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                        
                                        sagittariusImageView
                                        
                                    ])
        stack.backgroundColor = .white
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.backgroundColor = .white
        stack.isLayoutMarginsRelativeArrangement = true
        stack.clipsToBounds = true
        stack.layer.cornerRadius = 0
        return stack
    }()
    
    
    
    let sagittariusImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.isUserInteractionEnabled = true
        imageView.image = UIImage(named:
                                    "sagittarius.png")?.withAlignmentRectInsets(UIEdgeInsets(top: -25, left: -25, bottom: -25,
                                                                                             right: -25))
        return imageView
        
    }()
    
    
    
    
    
    
    lazy var lineThree: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                        libraStack,
                                        scorpioStack,
                                        sagittariusStack
                                    ])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 1
        stack.distribution = .fillEqually
        stack.isLayoutMarginsRelativeArrangement = true
        return stack
    }()
    
    
    
    // LİNE FOUR
    // LİNE FOUR
    // LİNE FOUR
    // LİNE FOUR
    // LİNE FOUR
    
    
    lazy var  capricornStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                        
                                        capricornImageView
                                        
                                    ])
        stack.backgroundColor = .white
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.backgroundColor = .white
        stack.isLayoutMarginsRelativeArrangement = true
        stack.clipsToBounds = true
        stack.layer.cornerRadius = 0
        return stack
    }()
    
    
    
    let capricornImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.isUserInteractionEnabled = true
        imageView.image = UIImage(named:
                                    "capricorn.png")?.withAlignmentRectInsets(UIEdgeInsets(top: -25, left: -25, bottom: -25,
                                                                                           right: -25))
        return imageView
        
    }()
    
    
    
    
    lazy var  aquariusStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                        
                                        aquariusImageView
                                        
                                    ])
        stack.backgroundColor = .white
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.backgroundColor = .white
        stack.isLayoutMarginsRelativeArrangement = true
        stack.clipsToBounds = true
        stack.layer.cornerRadius = 0
        return stack
    }()
    
    
    
    let aquariusImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.isUserInteractionEnabled = true
        imageView.image = UIImage(named:
                                    "aquarius.png")?.withAlignmentRectInsets(UIEdgeInsets(top: -25, left: -25, bottom: -25,
                                                                                          right: -25))
        return imageView
        
    }()
    
    
    
    
    lazy var piscesStack : UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                        
                                        piscesImageView,
                                        
                                    ])
        stack.backgroundColor = .white
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.backgroundColor = .white
        stack.isLayoutMarginsRelativeArrangement = true
        stack.clipsToBounds = true
        stack.layer.cornerRadius = 0
        return stack
    }()
    
    
    
    let piscesImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.isUserInteractionEnabled = true
        imageView.image = UIImage(named:
                                    "pisces.png")?.withAlignmentRectInsets(UIEdgeInsets(top: -25, left: -25, bottom: -25,
                                                                                        right: -25))
        return imageView
        
    }()
    
    
    
    
    
    
    
    lazy var lineFour: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                        capricornStack,
                                        aquariusStack,
                                        piscesStack
                                    ])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 1
        stack.distribution = .fillEqually
        stack.isLayoutMarginsRelativeArrangement = true
        return stack
    }()
    
    
    lazy var mainVStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                        lineOne,
                                        lineTwo,
                                        lineThree,
                                        lineFour
                                    ])
        stack.spacing = 1
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.backgroundColor = .black
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
        
        let widthSize = (UIScreen.main.bounds.width ) / 3
        padding.top =  0
        padding.left = 0
        padding.bottom = 0
        padding.right = 0
        
        
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
            
            
            ariesStack.heightAnchor.constraint(equalToConstant: widthSize),
            taurusStack.heightAnchor.constraint(equalToConstant: widthSize),
            geminiStack.heightAnchor.constraint(equalToConstant: widthSize),
            leoStack.heightAnchor.constraint(equalToConstant: widthSize ),
            leoStack.heightAnchor.constraint(equalToConstant: widthSize ),
            virgoStack.heightAnchor.constraint(equalToConstant: widthSize ),
            libraStack.heightAnchor.constraint(equalToConstant: widthSize ),
            scorpioStack.heightAnchor.constraint(equalToConstant: widthSize ),
            sagittariusStack.heightAnchor.constraint(equalToConstant: widthSize  ),
            capricornStack.heightAnchor.constraint(equalToConstant: widthSize),
            aquariusStack.heightAnchor.constraint(equalToConstant: widthSize ),
            piscesStack.heightAnchor.constraint(equalToConstant: widthSize ),
            
        ])
        
  
    }
  
}








