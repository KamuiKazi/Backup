//
//  ViewController.swift
//  Multiply
//
//  Created by period4 on 9/29/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var number1: UITextField!
    
    @IBOutlet weak var number2: UITextField!
    
    @IBOutlet weak var product: UILabel!
    
    @IBOutlet weak var image: UIImageView!

    @IBOutlet weak var operation: UISegmentedControl!
    
    @IBOutlet weak var varslide1: UISlider!
    
    @IBOutlet weak var varslide2: UISlider!
    
    override func viewDidLoad()  {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var format1 = NumberFormatter()
    var format2 = NumberFormatter()
    var equa = 0
    var number1Int = 0
    var number2Int = 0
    
    @IBAction func clear(_ sender: UIButton) {
        number1.text = ""
        number1.placeholder = "Enter #1"
        number2.text = ""
        number2.placeholder = "Enter #2"
        product.text = "="
        image.isHidden = true}
    
    @IBAction func solve(_ sender: UIButton) {
        number1Int = format1.number(from: "\(number1.text ?? "0")") as! Int
        number2Int = format2.number(from: "\(number2.text ?? "0")") as! Int
        switch operation.selectedSegmentIndex
           {case 0:
                equa = number1Int + number2Int
            case 1:
                equa = number1Int - number2Int
            case 2:
                equa = number1Int * number2Int
            case 3:
                equa = number1Int / number2Int
            default:
                break}
        let solv = equa % 2
        if equa == 64 {
            image.isHidden = false
            image.image = UIImage(named:"toad")}
        if solv == 0 && equa != 64 {
            image.isHidden = false
            image.image =  UIImage(named: "Dog")}
        if solv != 0 {
            image.isHidden = false
            image.image =
                UIImage(named:"Seafood")}
        product.text = "\(equa)"
        varslide1.maximumValue = varslide1.value + 20
        varslide1.minimumValue = varslide1.value - 20
        varslide2.maximumValue = varslide2.value + 20
        varslide2.minimumValue = varslide2.value - 20}
    
    @IBAction func slide1(_ sender: UISlider) {
    varslide1.isContinuous = true
        varslide1.maximumValue = Float(number1Int + 20)
        varslide1.minimumValue = Float(number1Int - 20)
        let slider1Int = Int(varslide1.value)
        number1.text = "\(slider1Int)"
        varslide1.value = Float(slider1Int)}
    
    @IBAction func slide2(_ sender: UISlider) {
    varslide2.isContinuous = true
        varslide2.maximumValue = Float(number2Int + 20)
        varslide2.minimumValue = Float(number2Int - 20)
        let slider2Int = Int(varslide2.value)
        number2.text = "\(slider2Int)"
        varslide2.value = Float(slider2Int)}
}

