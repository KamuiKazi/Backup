//
//  ViewController.swift
//  PersistenceChallenge
//
//  Created by Bobb Darnell
//  Copyright © 2021 MobileMakersEdu. All rights reserved.
//

import UIKit

class StoreViewController: UIViewController {
    @IBOutlet weak var integerTextField: UITextField!
    @IBOutlet weak var urlTextField: UITextField!
    @IBOutlet weak var arrayTextField1: UITextField!
    @IBOutlet weak var arrayTextField2: UITextField!
    @IBOutlet weak var arrayTextField3: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()}
    @IBAction func saveInteger(_ sender: UIButton) {
        // MARK: - MVP - Part I
        let user = UserDefaults.standard
        user.set(integerTextField.text, forKey: "integer")
        integerTextField.resignFirstResponder()}
    @IBAction func saveUrl(_ sender: UIButton) {
        // MARK: - Stretch #1 - Part I
        let user = UserDefaults.standard
        user.set(urlTextField.text, forKey: "url")
        urlTextField.resignFirstResponder()}
    @IBAction func saveArray(_ sender: UIButton) {
        // MARK: - Stretch #2 - Part I
        let user = UserDefaults.standard
        let intArray = [arrayTextField1.text, arrayTextField2.text, arrayTextField3.text]
        user.set(intArray, forKey: "intArray")
        arrayTextField1.resignFirstResponder()
        arrayTextField2.resignFirstResponder()
        arrayTextField3.resignFirstResponder()}
    @IBAction func saveClass(_ sender: UIButton) {
        // MARK: - Stretch #3 - Part II
        let name = nameTextField.text ?? ""
        let age = ageTextField.text ?? ""
        let phone = phoneTextField.text ?? ""
        _ = Contact(Name: name, Age: age, Phone: phone)
        nameTextField.resignFirstResponder()
        ageTextField.resignFirstResponder()
        phoneTextField.resignFirstResponder()
        
    }
    
}

