//
//  otherViewController.swift
//  WordPlay
//
//  Created by period4 on 12/14/21.
//

import UIKit

class OtherViewController: UIViewController {
    
    @IBOutlet weak var outputLabel: UILabel!
    
    @IBOutlet weak var ThreeWords: UILabel!
    
    var lableText = ""
    var Three = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        outputLabel.text = lableText
        ThreeWords.text = Three
    }


}

