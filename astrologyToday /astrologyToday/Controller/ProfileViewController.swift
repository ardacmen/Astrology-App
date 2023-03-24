//
//  ProfileViewController.swift
//  astrologyToday
//
//  Created by Arda Çimen on 21.03.2023.
//

import UIKit
import FirebaseAuth
import Firebase

class ProfileViewController:  UIViewController {
    
    
    let mainView = ProfileView()
    
   
    
    override func loadView() {
        self.view = mainView
    }
    
    let db = Firestore.firestore()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.mainVStackView.addHorizontalSeparators(color: .black)
        mainView.birthdayDatePicker.minimumDate = Calendar.current.date(byAdding: .year, value: -70, to: Date())
        mainView.birthdayDatePicker.maximumDate = Calendar.current.date(byAdding: .year, value: 0, to: Date())
        mainView.birthdayDatePicker.datePickerMode = .date
        getData()
        addActionToElement()
    }
    
    
    
    func getData(){
        
        let docRef = db.collection("astrologytoday-96679").document(Auth.auth().currentUser!.email!)

     
      
        docRef.getDocument { (document, error) in
            if let document = document {
           
                if let allData = document.data()
                {
                    if allData.count >= 0
                    {
                        self.mainView.emailTextField.text = allData["Mail"] as? String
                        self.mainView.nameTextField.text = allData["Name"] as? String
                        self.mainView.genderTextField.text = allData["Gender"] as? String
                        self.mainView.RelationShipTextField.text = allData["relationShip"] as? String
                        self.mainView.workstatusTextField.text = allData["workStatus"] as? String
                        let timestamp = allData["birthday"] as? Timestamp
                        let date = timestamp?.dateValue()
                        self.mainView.birthdayDatePicker.date = date ?? .now
                        self.valueFetched()
                    }
                }
              
          } else {
            print("Document does not exist in cache")
          }
        }
        
    }
    
    func valueFetched(){
        
        if mainView.birthdayDatePicker.date.zodiac == .Aquarius
        {
            mainView.signLabel.text = "Aquarius"
        }else if  mainView.birthdayDatePicker.date.zodiac == .Aries {
            mainView.signLabel.text = "Aries"
        }else if  mainView.birthdayDatePicker.date.zodiac == .Cancer {
            mainView.signLabel.text = "Cancer"
        }else if  mainView.birthdayDatePicker.date.zodiac == .Capricorn {
            mainView.signLabel.text = "Capricorn"
        }else if  mainView.birthdayDatePicker.date.zodiac == .Gemini {
            mainView.signLabel.text = "Gemini"
        }else if  mainView.birthdayDatePicker.date.zodiac == .Leo {
            mainView.signLabel.text = "Leo"
        }else if  mainView.birthdayDatePicker.date.zodiac == .Libra {
            mainView.signLabel.text = "Libra"
        }else if  mainView.birthdayDatePicker.date.zodiac == .Pisces {
            mainView.signLabel.text = "Pisces"
        }else if  mainView.birthdayDatePicker.date.zodiac == .Virgo {
            mainView.signLabel.text = "Virgo"
        }else if  mainView.birthdayDatePicker.date.zodiac == .Taurus {
            mainView.signLabel.text = "Taurus"
        }else if  mainView.birthdayDatePicker.date.zodiac == .Scorpio {
            mainView.signLabel.text = "Scorpio"
        }else if  mainView.birthdayDatePicker.date.zodiac == .Sagittarius {
            mainView.signLabel.text = "Sagittarius"
        }else  {
            mainView.signLabel.text = "Undefined"
        }
    }
    
    func addActionToElement(){
        
        mainView.deleteButton.addAction(UIAction{ [weak self] _ in
            self?.deleteButtonPressed()
        }, for: .touchUpInside)
        
        mainView.changePassword.addAction(UIAction{ [weak self] _ in
            self?.changePassword()
        }, for: .touchUpInside)
        
        mainView.saveButton.addAction(UIAction{ [weak self] _ in
            self?.saveButtonClicked()
        }, for: .touchUpInside)
        
        mainView.birthdayDatePicker.addAction( UIAction { [weak self] _ in
            self?.birthdayValueChanged()
        }, for: .valueChanged)
        
    }
    
    func deleteButtonPressed(){
        
        let refreshAlert = UIAlertController(title: "Delete", message: "Do you want to delete your account?", preferredStyle: UIAlertController.Style.alert)

        refreshAlert.addAction(UIAlertAction(title: "Delete", style: .destructive, handler: { (action: UIAlertAction!) in
         
            Auth.auth().currentUser?.delete { error in
              
                if error == nil{
                    let controller = OnboardingViewController()
                    let navigationController = UINavigationController(rootViewController: controller)
                    navigationController.modalPresentationStyle = .overCurrentContext
                    self.navigationController?.present(navigationController, animated: true, completion: nil)
                }else{
                    self.makeAlert(titleInput: "Error!", messageInput: error?.localizedDescription ?? "Try Again Later")
                }
                
            }
            
          }))

        refreshAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (action: UIAlertAction!) in
          }))

        present(refreshAlert, animated: true, completion: nil)
        
    }
    
    func changePassword(){
        let vc = ResetPasswordViewController()
        self.present(vc, animated: true )
    }
    
    func saveButtonClicked(){
        
        db.collection("astrologytoday-96679").document(Auth.auth().currentUser?.email ?? "No User").setData([
            "Mail" : mainView.emailTextField.text ?? Auth.auth().currentUser!.email as Any,
            "Name" : mainView.nameTextField.text ?? "No Name",
            "Gender" : mainView.genderTextField.text ?? "No Gender",
            "relationShip" : mainView.RelationShipTextField.text ?? "No RelationShip",
            "workStatus" : mainView.workstatusTextField.text ?? "No Work Info",
            "birthday" : mainView.birthdayDatePicker.date
        ]) { err in
            if let err = err {
                self.makeAlert(titleInput: "Error!", messageInput: err.localizedDescription)
            } else {
                self.makeAlert(titleInput: "Success", messageInput: "Document successfully written!")
            }
        }
    }
    
    func birthdayValueChanged(){
      
        if mainView.birthdayDatePicker.date.zodiac == .Aquarius
        {
            mainView.signLabel.text = "Aquarius"
        }else if  mainView.birthdayDatePicker.date.zodiac == .Aries {
            mainView.signLabel.text = "Aries"
        }else if  mainView.birthdayDatePicker.date.zodiac == .Cancer {
            mainView.signLabel.text = "Cancer"
        }else if  mainView.birthdayDatePicker.date.zodiac == .Capricorn {
            mainView.signLabel.text = "Capricorn"
        }else if  mainView.birthdayDatePicker.date.zodiac == .Gemini {
            mainView.signLabel.text = "Gemini"
        }else if  mainView.birthdayDatePicker.date.zodiac == .Leo {
            mainView.signLabel.text = "Leo"
        }else if  mainView.birthdayDatePicker.date.zodiac == .Libra {
            mainView.signLabel.text = "Libra"
        }else if  mainView.birthdayDatePicker.date.zodiac == .Pisces {
            mainView.signLabel.text = "Pisces"
        }else if  mainView.birthdayDatePicker.date.zodiac == .Virgo {
            mainView.signLabel.text = "Virgo"
        }else if  mainView.birthdayDatePicker.date.zodiac == .Taurus {
            mainView.signLabel.text = "Taurus"
        }else if  mainView.birthdayDatePicker.date.zodiac == .Scorpio {
            mainView.signLabel.text = "Scorpio"
        }else if  mainView.birthdayDatePicker.date.zodiac == .Sagittarius {
            mainView.signLabel.text = "Sagittarius"
        }else  {
            mainView.signLabel.text = "Undefined"
        }
        
    }
    
}
