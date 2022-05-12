//
//  ViewController.swift
//  final
//
//  Created by period4 on 12/16/21.
//

import UIKit

class ViewController: UIViewController, UIPickerViewAccessibilityDelegate, UIPickerViewDataSource{
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return schoolWheelData.count
    }

    @IBOutlet weak var schoolPickerWheel: UIPickerView!
    
    var schoolWheelData:[String] = [String]()
    var selectedSchool: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.schoolPickerWheel.delegate = self
        self.schoolPickerWheel.dataSource = self
        schoolWheelData = ["Prospect","Buffalo Grove","Elk Grove","John Hersey","Rolling Meadows","Wheeling"]
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return schoolWheelData[row]
    }

    @IBAction func SchoolButton(_ sender: Any) {
    
        if schoolPickerWheel.selectedRow(inComponent: 0) == 0  {
            selectedSchool = 0
        }
        if schoolPickerWheel.selectedRow(inComponent: 0) == 1  {
            selectedSchool = 1
        }
        if schoolPickerWheel.selectedRow(inComponent: 0) == 2  {
            selectedSchool = 2
        }
        if schoolPickerWheel.selectedRow(inComponent: 0) == 3  {
            selectedSchool = 3
        }
        if schoolPickerWheel.selectedRow(inComponent: 0) == 4  {
            selectedSchool = 4
        }
        if schoolPickerWheel.selectedRow(inComponent: 0) == 5  {
            selectedSchool = 5
        }
        func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let sv = segue.destination as! SchoolView
            sv.school = selectedSchool
        }
 }
}

