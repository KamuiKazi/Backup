//
//  ViewController.swift
//  HelloWorld
//
//  Created by period4 on 9/2/21.
//

import UIKit

class ViewController: UIViewController {
  
    // stretch #5 part 1
    @IBOutlet weak var Class: UILabel!
    let classframe = CGRect(x: 153, y: 11, width: 300, height: 100)
    
    
    // stretch #6 part 1
    @IBOutlet weak var press: UIButton!
    
   
    // stretch #7 part 1
    @IBOutlet weak var imageView: UIImageView!
    
    let imageframe = CGRect(x: 121, y: 119, width: 100, height: 100)
    
    let Mushi = UIImage(imageLiteralResourceName: "Den Den Mushi")
    
    // stretch #8 part 1
    @IBOutlet weak var whatFun: UITextField!
    
    // stretch #9 part 1
    @IBOutlet weak var band: UILabel!
    
    let favbandframe = CGRect(x: 226, y: 257, width: 200, height: 100)
    
    // stretch #10 part 1
    var bandline: UILabel!
    
    let bandmembers = 6
    
    let bandframe = CGRect(x: 21, y: 290, width: 200, height: 200)
    
    let favoriteBand = "NobodyKnows+"
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // stretch #5 part 2
        Class.text = "Physics"
        Class.frame = classframe
        
        // stretch #6 part 2
        press.backgroundColor = #colorLiteral(red: 1, green: 0.8, blue: 0, alpha: 1)
        press.setTitle("Press", for: .normal)
        
        // stretch #7 part 2
       imageView.frame = imageframe
        imageView.image = Mushi
        view.addSubview(imageView)
        // stretch #8 part 2
        whatFun.text = "What Fun"
        
        // stretch #9 part 2
        band.text = favoriteBand
        band.frame = favbandframe
        
        
        // stretch #10 part 2
        //view.addSubview(bandline)
        //bandline.text = "NobodyKnows+ has \(bandmembers) members."
        //bandline.frame = bandframe
        
    }

    

}

