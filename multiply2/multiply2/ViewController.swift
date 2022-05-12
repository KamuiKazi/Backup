//
//  ViewController.swift
//  multiply2
//
//  Created by period4 on 10/7/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Image: UIImageView!
    
    @IBOutlet weak var numberOne: UITextField!
    
    @IBOutlet weak var numberTwo: UITextField!
    
    @IBOutlet weak var solution: UILabel!
    
    @IBOutlet weak var operationvar: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func clear(_ sender: Any) {
        numberOne.text = ""
        numberOne.placeholder = "Enter #1"
        
    }
    
    @IBAction func Solve(_ sender: Any) {
        var numOne = "\(numberOne.text ?? "0")"
        
        
    }
}

