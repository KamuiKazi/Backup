//
//  ViewController.swift
//  ModalSeguesChallenge
//
//  Created by Robert Kraft
//  Copyright © 2021 MobileMakersEdu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var wordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // MARK: - MVP
        var word = wordTextField.text
        
        
        
    }
    @IBAction func firstButton(_ sender: Any) {
        // MARK: - MVP
        performSegue(withIdentifier: "FirstSegue", sender: Any?.self)
    }
    
    // MARK: - Stretch #3
    
    @IBAction func backToStartView(_ sender: Any) {
        performSegue(withIdentifier: "UnSegue", sender: Any?.self)
        
    }
    
    
}

