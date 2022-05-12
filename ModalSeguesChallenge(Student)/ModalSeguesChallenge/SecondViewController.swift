//
//  SecondViewController.swift
//  ModalSeguesChallenge
//
//  Created by Robert Kraft
//  Copyright © 2021 MobileMakersEdu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var wordLabel: UILabel!
    
    var word: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wordLabel.text = word
    }
    
    // MARK: - Stretch #1
    
    @IBAction func dismiss(_ sender: Any) {
        dismiss(animated: true) {
        }
    }
    
    
    @IBAction func whenButtonPressed(_ sender: UIButton) {
        // MARK: - Stretch #2
        performSegue(withIdentifier: "SecondSegue", sender: Any?.self)
        
        
    }
    
    
}
