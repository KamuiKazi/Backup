//
//  NameView.swift
//  assignment notebook
//
//  Created by period4 on 1/31/22.
//

import UIKit

class NameView: UIViewController {
    @IBOutlet weak var nameLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func confirm(_ sender: Any) {
            let user = UserDefaults.standard
            user.set(nameLabel.text, forKey: "name")
            user.set(1, forKey: "key")
            nameLabel.text = ""
            self.resignFirstResponder()
    }
}
