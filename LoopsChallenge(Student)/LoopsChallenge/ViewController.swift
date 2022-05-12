//
//  ViewController.swift
//  LoopsChallenge
//
//  Created by Rob Zombie
//  Copyright © 2021 MobileMakersEdu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var textField4: UITextField!
    @IBOutlet weak var textField5: UITextField!
    
    @IBOutlet weak var myTextView: UITextView!
    
    @IBOutlet weak var nameTextField1: UITextField!
    @IBOutlet weak var nameTextField2: UITextField!
    @IBOutlet weak var nameTextField3: UITextField!
    
    @IBOutlet weak var scoreTextField1: UITextField!
    @IBOutlet weak var scoreTextField2: UITextField!
    @IBOutlet weak var scoreTextField3: UITextField!
    
    var values = [String]()
    var output = ""
    var namesAndScores: [String:Int] = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func setValues()
    {
        if let value1 = textField1.text, let value2 = textField2.text, let value3 = textField3.text, let value4 = textField4.text, let value5 = textField5.text {
            values = [value1,value2,value3,value4,value5]
        }
        
        if let name1 = nameTextField1.text, let name2 = nameTextField2.text, let name3 = nameTextField3.text, let text1 = scoreTextField1.text, let text2 = scoreTextField2.text, let text3 = scoreTextField3.text, let score1 = Int(text1), let score2 = Int(text2), let score3 = Int(text3) {
            namesAndScores = [name1:score1,name2:score2,name3:score3]
        }
        
    }
    
    @IBAction func mvpButtonPressed(_ sender: UIButton)
    {
        view.endEditing(true)
        var output = "" //reset
        setValues()
        // MARK: - MVP
        for index in 0...4  {
            output.append("\(values[index]) ")
        }
        myTextView.text = output
    }
    
    @IBAction func stretch1ButtonPressed(_ sender: UIButton) {
        view.endEditing(true)
        setValues()
        output = ""
        // MARK: - Stretch #1
        for index in 0...3 {
            output.append("\(values[index]), ")
        }
        for index in 4...4 {
            output.append("\(values[index])")
        }
        myTextView.text = output
    }
    
    @IBAction func stretch2ButtonPressed(_ sender: UIButton) {
        view.endEditing(true)
        setValues()
        var maximum = values[0]
        // MARK: - Stretch #2
        for index in 0...3 {
            if values[index + 1] < values[index] {
                maximum = values[index]
            }
            else {maximum = values[index + 1]}
        }
        myTextView.text = "After searching the array, \(maximum) is the largest"
    }
    
    @IBAction func stretch3ButtonPressed(_ sender: UIButton) {
        view.endEditing(true)
        setValues()
        var sum = 0
        
        // MARK: - Stretch #3
        for index in 0...4 {
            sum += Int(values[index]) ?? 0
        }
        myTextView.text = "The total of the array is \(sum)"
    }
    
    @IBAction func stretch4ButtonPressed(_ sender: UIButton) {
        view.endEditing(true)
        setValues()
        var minimum = values[0]
        var index = 0
        
        // MARK: - Stretch #4
        for index in 0...3 {
            if values[index + 1] > values[index] {
                minimum = values[index]
            }
            else {minimum = values[index + 1]}
        }
        index = values.lastIndex(of: minimum) ?? 0
        myTextView.text =   "After searching the array, we have\n" +
            "found the minimum is \(minimum) and is\n" +
        "in index # \(index)"
    }
    
    @IBAction func stretch5ButtonPressed(_ sender: UIButton) {
        view.endEditing(true)
        setValues()
        output = ""
        
        // MARK: - Stretch #5
        for (name, score) in namesAndScores {
            output = "\(name): \(score)"
        }
        myTextView.text = output
    }
    
    
}


