//
//  ViewController.swift
//  WordPlay
//
//  Created by period4 on 12/14/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var blurb: UILabel!
    @IBOutlet weak var response: UITextField!
    @IBOutlet weak var Noun: UITextField!
    @IBOutlet weak var Adjective: UITextField!
    @IBOutlet weak var Verb: UITextField!
    @IBOutlet weak var Buffalo: UILabel!
    @IBOutlet weak var CheckWord: UITextField!
    @IBOutlet weak var ReplaceWord: UITextField!
    
    
    
     
    override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: (Any)?) {
    let nvc = segue.destination as! OtherViewController
        nvc.lableText = "\(blurb.text ?? "") \(response.text ?? "")."
        nvc.Three = "\(Adjective) \(Noun) \(Verb)."
    }
    @IBAction func BuffaloCheck(_ sender: UIButton?) {
        let Dismiss = UIAlertAction(title: "Dismiss", style: .default, handler: nil)
        let CheckGood = UIAlertController(title: "Check Was Good", message:"😃", preferredStyle: .alert)
        let CheckBad = UIAlertController(title: "Check Was Bad", message:"😔", preferredStyle: .alert)
        CheckGood.addAction(Dismiss)
        CheckBad.addAction(Dismiss)
        
        let BuffaloString = Buffalo.text
        let CheckString = CheckWord.text ?? ""
        let CheckSet = CheckString.trimmingCharacters(in: NSCharacterSet.whitespaces)
        if BuffaloString?.contains(CheckSet) == true {
            present(CheckGood, animated: true, completion: nil)
            }
        else if BuffaloString?.contains(CheckSet) == false{
            present(CheckBad, animated: true, completion: nil)
            }
    }

    @IBAction func Replace(_ sender: UIButton) {
        let BuffaloString = Buffalo.text
        let CheckString = ReplaceWord.text ?? ""
        CheckWord.text = CheckString
        let CheckSet = CheckString.trimmingCharacters(in: NSCharacterSet.whitespaces)
        let Dismiss = UIAlertAction(title: "Dismiss", style: .default, handler: nil)
        let CheckBad = UIAlertController(title: "Check Was Bad", message:"😔", preferredStyle: .alert)
        let ReplaceEmpty
        = UIAlertController(title: "Replace Was Empty", message:"No Word Entered", preferredStyle: .alert)
        CheckBad.addAction(Dismiss)
        ReplaceEmpty.addAction(Dismiss)
        
        if CheckString == "" {
            present(ReplaceEmpty, animated: true, completion: nil)
        }
        else {BuffaloCheck(nil)}
        
        
        
        
    }
    


}

