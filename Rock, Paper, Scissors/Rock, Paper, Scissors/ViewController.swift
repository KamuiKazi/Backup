//
//  ViewController.swift
//  Rock, Paper, Scissors
//
//  Created by period4 on 2/8/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var UserChoice: UISegmentedControl!
    @IBOutlet weak var UserImage: UIImageView!
    @IBOutlet weak var ComImage: UIImageView!
    @IBOutlet weak var WinnerLabel: UILabel!
    @IBOutlet weak var Count: UILabel!
    
    
    
    
    
    
    let images: [Int: UIImage] = [1: #imageLiteral(resourceName: "Rock Icon"), 2: #imageLiteral(resourceName: "Paper Icon"), 3: #imageLiteral(resourceName: "Scissor Icon")]
    let outcomes: [String: String] = ["1,2": "Com", "2,3": "Com", "3,1": "Com", "2,1": "User", "1,3": "User", "3,2": "User",]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func userSelection(_ sender: Any) {
        let index = UserChoice.selectedSegmentIndex
        UserImage.image = UserChoice.imageForSegment(at: index)
    }
    @IBAction func Confirm(_ sender: Any) {
        let ComChoice = Int.random(in: 1...3)
        let UserIndex = UserChoice.selectedSegmentIndex
        let Combatants = "\(UserIndex),\(ComChoice)"
        ComImage.image = images[ComChoice]
        WinnerLabel.text = outcomes[Combatants]
    }
    @IBAction func Help(_ sender: Any) {
        performSegue(withIdentifier: "WebViewSegue", sender: nil)
    }
    @IBAction func Start(_ sender: Any) {
        Timer(timeInterval: 1.0, invocation: , repeats: false)
        
        
    }
    
}
