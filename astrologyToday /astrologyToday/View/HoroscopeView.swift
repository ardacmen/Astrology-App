//
//  OnboardingView.swift
//  astrologyToday
//
//  Created by Arda Çimen on 15.03.2023.
//

import UIKit

class HoroscopeView: UIView {
    
    
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
                                        ariesDateLabel,
                                        ariesImageView,
                                        ariesLabel
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
                                    "aries.png")?.withAlignmentRectInsets(UIEdgeInsets(top: -15, left: -25, bottom: -0,
                                                                                            right: -25))
        return imageView
        
    }()
    
    
    let ariesDateLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Mar 21-Apr 19"
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()
    
    let ariesLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "ARIES"
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()
    
    lazy var geminiStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                        geminiDateLabel,
                                        geminiImageView,
                                        geminiLabel
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
                                    "gemini.png")?.withAlignmentRectInsets(UIEdgeInsets(top: -15, left: -25, bottom: -0,
                                                                                            right: -25))
        imageView.isUserInteractionEnabled = true
        return imageView
        
    }()
    
    
    let geminiDateLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "May 21-Jun 21"
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()
    
    let geminiLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "GEMINI"
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()
    
    lazy var taurusStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                        taurusDateLabel,
                                        taurusImageView,
                                        taurusLabel
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
                                    "taurus.png")?.withAlignmentRectInsets(UIEdgeInsets(top: -15, left: -25, bottom: -0,
                                                                                            right: -25))
        return imageView
        
    }()
    
    
    let taurusDateLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Apr 20-May 20"
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()
    
    let taurusLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "TAURUS"
        label.textColor = .black
        label.textAlignment = .center
        return label
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
                                        cancerDateLabel,
                                        cancerImageView,
                                        cancerLabel
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
                                    "cancer.png")?.withAlignmentRectInsets(UIEdgeInsets(top: -15, left: -25, bottom: -0,
                                                                                            right: -25))
        return imageView
        
    }()
    
    
    let cancerDateLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Jun 22-Jul 22"
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()
    
    let cancerLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "CANCER"
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()
    
    lazy var leoStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                        leoDateLabel,
                                        leoImageView,
                                        leoLabel
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
                                    "leo.png")?.withAlignmentRectInsets(UIEdgeInsets(top: -15, left: -25, bottom: -0,
                                                                                            right: -25))
        return imageView
        
    }()
    
    
    let leoDateLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Jul 23-Aug 22"
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()
    
    let leoLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "LEO"
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()
    
    lazy var virgoStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                        virgoDateLabel,
                                        virgoImageView,
                                        virgoLabel
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
                                    "virgo.png")?.withAlignmentRectInsets(UIEdgeInsets(top: -15, left: -25, bottom: -0,
                                                                                            right: -25))
        return imageView
        
    }()
    
    
    let virgoDateLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Aug 23-Sep 22"
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()
    
    let virgoLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "VIRGO"
        label.textColor = .black
        label.textAlignment = .center
        return label
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
                                        libraDateLabel,
                                        libraImageView,
                                        libraLabel
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
                                    "libra.png")?.withAlignmentRectInsets(UIEdgeInsets(top: -15, left: -25, bottom: -0,
                                                                                            right: -25))
        return imageView
        
    }()
    
    
    let libraDateLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Sep 23-Oct 22"
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()
    
    let libraLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "LIBRA"
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()
    
    lazy var scorpioStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                        scorpioDateLabel,
                                        scorpioImageView,
                                        scorpioLabel
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
                                    "scorpio.png")?.withAlignmentRectInsets(UIEdgeInsets(top: -15, left: -25, bottom: -0,
                                                                                            right: -25))
        return imageView
        
    }()
    
    
    let scorpioDateLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Oct 23-Nov 21"
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()
    
    let scorpioLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "SCORPIO"
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()
    
    lazy var sagittariusStack : UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                        sagittariusDateLabel,
                                        sagittariusImageView,
                                        sagittariusLabel
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
                                    "sagittarius.png")?.withAlignmentRectInsets(UIEdgeInsets(top: -15, left: -25, bottom: -0,
                                                                                            right: -25))
        return imageView
        
    }()
    
    
    let sagittariusDateLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Nov 22-Dec 21"
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()
    
    let sagittariusLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "SAGITTARIUS"
        label.textColor = .black
        label.textAlignment = .center
        return label
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
                                        capricornDateLabel,
                                        capricornImageView,
                                        capricornLabel
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
                                    "capricorn.png")?.withAlignmentRectInsets(UIEdgeInsets(top: -15, left: -25, bottom: -0,
                                                                                            right: -25))
        return imageView
        
    }()
    
    
    let capricornDateLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Dec 22-Jan 19"
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()
    
    let capricornLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "CAPRICORN"
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()
    
    lazy var  aquariusStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                        aquariusDateLabel,
                                        aquariusImageView,
                                        aquariusLabel
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
                                    "aquarius.png")?.withAlignmentRectInsets(UIEdgeInsets(top: -15, left: -25, bottom: -0,
                                                                                            right: -25))
        return imageView
        
    }()
    
    
    let aquariusDateLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Jan 20-Feb 18"
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()
    
    let aquariusLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "AQUARIUS"
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()
    
    lazy var piscesStack : UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                        piscesDateLabel,
                                        piscesImageView,
                                        piscesLabel
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
                                    "pisces.png")?.withAlignmentRectInsets(UIEdgeInsets(top: -15, left: -25, bottom: -0,
                                                                                            right: -25))
        return imageView
        
    }()
    
    
    let piscesDateLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Feb 19-Mar 20"
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()
    
    let piscesLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "PISCES"
        label.textColor = .black
        label.textAlignment = .center
        return label
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
            
           
            ariesStack.heightAnchor.constraint(equalToConstant: widthSize + 50),
            taurusStack.heightAnchor.constraint(equalToConstant: widthSize + 50),
            geminiStack.heightAnchor.constraint(equalToConstant: widthSize + 50),
            leoStack.heightAnchor.constraint(equalToConstant: widthSize + 50),
            leoStack.heightAnchor.constraint(equalToConstant: widthSize + 50),
            virgoStack.heightAnchor.constraint(equalToConstant: widthSize + 50),
            libraStack.heightAnchor.constraint(equalToConstant: widthSize + 50),
            scorpioStack.heightAnchor.constraint(equalToConstant: widthSize + 50),
            sagittariusStack.heightAnchor.constraint(equalToConstant: widthSize + 50 ),
            capricornStack.heightAnchor.constraint(equalToConstant: widthSize + 50 ),
            aquariusStack.heightAnchor.constraint(equalToConstant: widthSize + 50),
            piscesStack.heightAnchor.constraint(equalToConstant: widthSize + 50),
            
        ])
        
        
        
        
        
        
    }
    
    
    
    
    
    
}








