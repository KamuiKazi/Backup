//
//  ViewController.swift
//  UIAlertControllerChallenge
//
//  Created by Roberto Clemente
//  Copyright © 2021 MobileMakersEdu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var alert = UIAlertController()
    @IBOutlet weak var orange: UIButton!
    @IBOutlet weak var green: UIButton!
    @IBOutlet weak var purple: UIButton!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var enterName: UIButton!
    @IBOutlet weak var randomNumField: UITextField!
    @IBOutlet weak var numEnter: UIButton!
   
    var z = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func mvpButtonPressed(_ sender: UIButton) {
        alert.title = "welcome"
        alert.
        
    }
    
    
    @IBAction func stretch1ButtonPressed(_ sender: UIButton) {
        //MARK: -Stretch #1
        alert.title = "Pick a color"
        if alert.view.alpha == 0 {
            alert.view.alpha = 1
            purple.isHidden = false
            green.isHidden = false
            orange.isHidden = false
        }
        else if alert.view.alpha == 1 {
            alert.view.alpha = 0
            purple.isHidden = true
            green.isHidden = true
            orange.isHidden = true
        }
    }
    @IBAction func purpleColor(_ sender: UIButton) {
        view.backgroundColor = UIColor.purple
        alert.view.alpha = 0
        purple.isHidden = true
        green.isHidden = true
        orange.isHidden = true
    }
    @IBAction func greenColor(_ sender: UIButton) {
        view.backgroundColor = UIColor.green
        alert.view.alpha = 0
        purple.isHidden = true
        green.isHidden = true
        orange.isHidden = true
    }
    @IBAction func orangeColor(_ sender: UIButton) {
        view.backgroundColor = UIColor.orange
        alert.view.alpha = 0
        purple.isHidden = true
        green.isHidden = true
        orange.isHidden = true
    }
    
    
    
    @IBAction func stretch2ButtonPressed(_ sender: UIButton) {
        //MARK: -Stretch #2
        alert.title = "Enter your name"
        if alert.view.alpha == 0 {
            alert.view.alpha = 1
            enterName.isHidden = false
            nameField.isHidden = false
        }
        else if alert.view.alpha == 1 {
            alert.view.alpha = 0
            enterName.isHidden = true
            nameField.isHidden = true
        }
    }
    
    @IBAction func nameEntered(_ sender: UIButton) {
        alert.title = "Hello, \(nameField.text)"
        alert.view.alpha = 0
    }
    
    @IBAction func stretch3ButtonPressed(_ sender: UIButton) {
        //MARK: -Stretch #3
        var z = Int.random(in: 1...10)
        alert.title = "Enter a number between 1 and 10"
        if alert.view.alpha == 0 {
            alert.view.alpha = 1
            randomNumField.isHidden = false
            numEnter.isHidden = false
        }
        else if alert.view.alpha == 1 {
            alert.view.alpha = 0
            randomNumField.isHidden = true
            numEnter.isHidden = true
        }
    }
    @IBAction func enterNum(_ sender: UIButton) {
    var v = "\(z)"
        if randomNumField.text == v {
            alert.title = "Correct"
        }
        else if randomNumField.text != v {
            alert.title = "Wrong"
        }
    }
    
    
    
    
}

