//
//  ViewController.swift
//  assignment notebook
//
//  Created by period4 on 1/27/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameView: UIView!
    @IBOutlet weak var TableView: UITableView!
    @IBOutlet weak var TableCell1: UITableViewCell!
    @IBOutlet weak var TableLabel1: UILabel!
    @IBOutlet weak var TableCell2: UITableViewCell!
    @IBOutlet weak var TableLabel2: UILabel!
    @IBOutlet weak var TableCell3: UITableViewCell!
    @IBOutlet weak var TableLabel3: UILabel!
    @IBOutlet weak var DetailsCommand: UICommand!
    @IBOutlet weak var DeleteCommand: UICommand!
    @IBOutlet var optionsMenu: UIMenu!
    @IBOutlet weak var Options1: UIButton!
    @IBOutlet weak var Options2: UIButton!
    @IBOutlet weak var Options3: UIButton!
    
    
    convenience init(title: String = "Delete", image: UIImage? = nil, action: )
    var selectedTask = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let user = UserDefaults.standard
        TableView = (user.value(forKey: "save") as! UITableView)
        if 0 == 0 {
            user.setValue(TableView, forKey: "save")
            }
        
        }
    @IBAction func addName(_ sender: Any) {
        nameView.becomeFirstResponder()
    }
    func table() {
        let user = UserDefaults.standard
        let key = user.value(forKey: "key")
        let name = user.string(forKey: "name")
        if key as! Int == 1 {
            TableView.insertRows(at: TableView.indexPathsForRows(in: TableCell1.accessibilityFrame)!, with: UITableView.RowAnimation.top)
            TableLabel1.text = name
            
            }
            user.setValue(0, forKey: "key")
        }
    @IBAction func Button1(_ sender: Any) {
        selectedTask = 1
        Options1.menu = optionsMenu
        Options1.showsMenuAsPrimaryAction = true
    }
    @IBAction func Button2(_ sender: Any) {
        selectedTask = 2
        Options2.menu = optionsMenu
        Options2.showsMenuAsPrimaryAction = true
    }
    @IBAction func Button3(_ sender: Any) {
        selectedTask = 3
        Options3.menu = optionsMenu
        Options3.showsMenuAsPrimaryAction = true
    }
    
}


