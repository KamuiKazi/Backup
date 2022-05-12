//
//  ViewController.swift
//  UIButtonsLabelsActionsOutletsChallenge
//
//  Created by Robert Griffin III
//  Copyright (c) 2021 MobileMakers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Start Stretch #2
    
    @IBOutlet weak var ItsHardToBeGreen: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    
    // MARK: - Start Stretch #1
    
    @IBAction func MakeMeGreen(_ sender: UIButton) {
        view.backgroundColor = #colorLiteral(red: 0.2039215686, green: 0.7803921569, blue: 0.3490196078, alpha: 1)
        ItsHardToBeGreen.text = "It's Hard To Be Green."
    }
    
    
    // MARK: - Start Stretch #3
    
    @IBAction func Reset(_ sender: UIButton) {
        ItsHardToBeGreen.text = "What Color Am I?"
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    //@IBAction func Rainbow(_ sender: UIButton) {
        //let x = Int.random(in: 111111...999999)
        //var g = SystemRandomNumberGenerator()
        //let y = Int.random(in: 111111...999999, using: &g)
        //view.backgroundColor =
    
   // }
}

