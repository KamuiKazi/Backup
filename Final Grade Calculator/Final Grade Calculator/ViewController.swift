//
//  ViewController.swift
//  Final Grade Calculator
//
//  Created by period4 on 11/9/21.
//

import UIKit

class ViewController: UIViewController, UIPickerViewAccessibilityDelegate, UIPickerViewDataSource {
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return desiredGradeWheelData.count
    }
    
    @IBOutlet weak var currentGradeTextField: UITextField!
    @IBOutlet weak var desiredGradeTextField: UITextField!
    @IBOutlet weak var finalsWeightTextField: UITextField!
    @IBOutlet weak var desiredGradeSelector: UISegmentedControl!
    @IBOutlet weak var desiredGradePickerWheel: UIPickerView!
    @IBOutlet weak var requiredScoreTextField: UITextField!
    @IBOutlet weak var extraCreditLabel: UILabel!
    
    var desiredGradeWheelData:[String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.desiredGradePickerWheel.delegate = self
        self.desiredGradePickerWheel.dataSource = self
        desiredGradeWheelData = ["A","B","C","D"]
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return desiredGradeWheelData[row]
    }
    
    @IBAction func Calculate(_ sender: UIButton) {
        var currentGrade = Double(currentGradeTextField.text ?? "0.0") ?? 0.0
        var finalsWeight = Double(finalsWeightTextField.text ?? "0.0") ?? 0.0
        var desiredGrade = 0.0
        var pickerValue = 0.0
        finalsWeight = finalsWeight / 100
        currentGrade = currentGrade / 100
        
        if desiredGradePickerWheel.selectedRow(inComponent: 0) == 0  {
            pickerValue = 0.90
        }
        if desiredGradePickerWheel.selectedRow(inComponent: 0) == 1  {
            pickerValue = 0.80
        }
        if desiredGradePickerWheel.selectedRow(inComponent: 0) == 2  {
            pickerValue = 0.70
        }
        if desiredGradePickerWheel.selectedRow(inComponent: 0) == 3  {
            pickerValue = 0.60
        }
        
        switch desiredGradeSelector.selectedSegmentIndex
           {case 0:
            desiredGrade = 0.90
            case 1:
                desiredGrade = 0.80
            case 2:
                desiredGrade = 0.70
            case 3:
                desiredGrade = 0.60
            case 4:
                desiredGrade = Double(desiredGradeTextField.text ?? "0.0") ?? 0.0
                desiredGrade = desiredGrade / 100
            case 5:
                desiredGrade = pickerValue
            default:
                break}
        
        let currentGradeWeight = 1.0 - finalsWeight
        let weightedCurrentGrade = currentGrade * currentGradeWeight
        let requiredFinalGrade = (desiredGrade - weightedCurrentGrade) / finalsWeight
        let requiredPersent = round(requiredFinalGrade * 100)
        requiredScoreTextField.text = "\(requiredPersent)%"
        if requiredFinalGrade <= 1 {
            extraCreditLabel.isHidden = true
            view.backgroundColor = UIColor.systemGreen
            desiredGradeSelector.backgroundColor = UIColor.green
            currentGradeTextField.backgroundColor = UIColor.green
            finalsWeightTextField.backgroundColor = UIColor.green
            desiredGradeTextField.backgroundColor = UIColor.green
        }
        else if requiredFinalGrade > 1{
            extraCreditLabel.isHidden = false
            view.backgroundColor = UIColor.systemRed
            desiredGradeSelector.backgroundColor = UIColor.systemPink
            currentGradeTextField.backgroundColor = UIColor.systemPink
            finalsWeightTextField.backgroundColor = UIColor.systemPink
            desiredGradeTextField.backgroundColor = UIColor.systemPink
        }
    }
}

