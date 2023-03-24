//
//  TarotView.swift
//  astrologyToday
//
//  Created by Arda Çimen on 15.03.2023.
//

import UIKit
import iOSDropDown


class MoonView: UIView {
    
    
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
    
    lazy var emptyStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                        
                                    ])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.isLayoutMarginsRelativeArrangement = true
        return stack
    }()
    
    lazy var moonStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                      imageView
                                    ])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.isLayoutMarginsRelativeArrangement = true
        return stack
    }()
    
    let imageView : UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    
    lazy var lineOne: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                        emptyStack,
                                        moonStack
                                    ])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.spacing = 20
        stack.isLayoutMarginsRelativeArrangement = true
        return stack
    }()
    
    let dayTF : UITextField = {
        let tf =  DropDown()
        tf.optionArray = ["01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30"]
        tf.textColor = .black
        tf.attributedPlaceholder = NSAttributedString(
            string: "choose the day",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.black]
        )
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.isSearchEnable = false
        return tf
    }()
    
    let monthTF : UITextField = {
        let tf =  DropDown()
        tf.optionArray = ["01","02","03","04","05","06","07","08","08","09","10","11","12"]
        tf.textColor = .black
        tf.attributedPlaceholder = NSAttributedString(
            string: "choose the month",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.black]
        )
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.isSearchEnable = false
        return tf
    }()
    
    let yearTF : UITextField = {
        let tf =  DropDown()
        tf.optionArray = [
         "1950",
         "1951",
         "1952",
         "1953",
         "1954",
         "1955",
         "1956",
         "1957",
         "1958",
         "1959",
         "1960",
         "1961",
         "1962",
         "1963",
         "1964",
         "1965",
         "1966",
         "1967",
         "1968",
         "1969",
         "1970",
         "1971",
         "1972",
         "1973",
         "1974",
         "1975",
         "1976",
         "1977",
         "1978",
         "1979",
         "1980",
         "1981",
         "1982",
         "1983",
         "1984",
         "1985",
         "1986",
         "1987",
         "1988",
         "1989",
         "1990",
         "1991",
         "1992",
         "1993",
         "1994",
         "1995",
         "1996",
         "1997",
         "1998",
         "1999",
         "2000",
         "2001",
         "2002",
         "2003",
         "2004",
         "2005",
         "2006",
         "2007",
         "2008",
         "2009",
         "2010",
         "2011",
         "2012",
         "2013",
         "2014",
         "2015",
         "2016",
         "2017",
         "2018",
         "2020",
         "2021",
         "2022",
         "2023"
        ]
        tf.textColor = .black
        tf.attributedPlaceholder = NSAttributedString(
            string: "choose the year",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.black]
        )
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.isSearchEnable = false
        return tf
    }()
    
    let hour : UITextField = {
        let tf =  DropDown()
        tf.optionArray = [
        "00",
        "01",
        "02",
        "03",
        "04",
        "05",
        "06",
        "07",
        "08",
        "09",
        "10",
        "11",
        "12",
        "13",
        "14",
        "15",
        "16",
        "17",
        "18",
        "19",
        "20",
        "21",
        "22",
        "23",
        ]
        tf.textColor = .black
        tf.attributedPlaceholder = NSAttributedString(
            string: "choose the hour",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.black]
        )
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.isSearchEnable = false
        return tf
    }()
    
    let minute : UITextField = {
        let tf =  DropDown()
        tf.optionArray = [
        "01",
        "02",
        "03",
        "04",
        "05",
        "06",
        "07",
        "08",
        "09",
        "10",
        "11",
        "12",
        "13",
        "14",
        "15",
        "16",
        "17",
        "18",
        "19",
        "20",
        "21",
        "22",
        "23",
        "24",
        "25",
        "26",
        "27",
        "28",
        "29",
        "30",
        "31",
        "32",
        "33",
        "34",
        "35",
        "36",
        "37",
        "38",
        "39",
        "40",
        "41",
        "42",
        "43",
        "44",
        "45",
        "46",
        "47",
        "48",
        "49",
        "50",
        "51",
        "52",
        "53",
        "54",
        "55",
        "56",
        "57",
        "58",
        "59",
        
        
        
        ]
        tf.textColor = .black
        tf.attributedPlaceholder = NSAttributedString(
            string: "choose the minute",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.black]
        )
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.isSearchEnable = false
        return tf
    }()
    
    
    lazy var hourStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                     hour,
                                     minute
                                    ])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 20
        stack.distribution = .fillEqually
        stack.isLayoutMarginsRelativeArrangement = true
        return stack
    }()
    
    
    let  calculateButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.setTitleColor(.black, for: .normal)
        button.setTitle("Calculate Moon Zodiac Sign", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return   button
        
    }()
    
    let resultLabel : UILabel = {
        let label = UILabel()
        label.text = ""
        label.textColor = .black
        label.backgroundColor = .white
        label.clipsToBounds = true
        label.layer.cornerRadius   = 10
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 20)
        label.layer.borderWidth = 0.5
        label.layer.borderColor = UIColor.black.cgColor
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var mainVStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                        lineOne,
                                        dayTF,
                                        monthTF,
                                        yearTF,
                                        hourStack,
                                        calculateButton,
                                        resultLabel
                                    ])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 25
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
            lineOne.heightAnchor.constraint(equalToConstant: 150.0),
            imageView.heightAnchor.constraint(equalToConstant: 150.0),
            calculateButton.heightAnchor.constraint(equalToConstant: 40.0),
            resultLabel.heightAnchor.constraint(equalToConstant: 80.0)
            
            
            
        ])
    }
}









