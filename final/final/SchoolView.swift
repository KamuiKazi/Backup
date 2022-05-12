//
//  SchoolView.swift
//  final
//
//  Created by period4 on 12/16/21.
//

import UIKit

class SchoolView: UIViewController {
    
    var school = 0
    var schoolData: [String] = [String]()
    @IBOutlet weak var Website: UIBarButtonItem!
    @IBOutlet weak var Address: UIBarButtonItem!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func startupschool() -> Array<Any> {
        if school == 0{
            let t = Prospect()
            let schoolData = t.Data
        }
        if school == 1{
            let t = Prospect()
            let schoolData = t.Data
        }
        if school == 2{
            let t = Prospect()
            let schoolData = t.Data
        }
        if school == 3{
            let t = Prospect()
            let schoolData = t.Data
        }
        if school == 4{
            let t = Prospect()
            let schoolData = t.Data
        }
        if school == 5{
            let t = Prospect()
            let schoolData = t.Data
        }
        return schoolData
    }
    func SchoolInital(){
        UIAlertController
        imageView.image = UIImage(named: schoolData[2])
    }
    
}
