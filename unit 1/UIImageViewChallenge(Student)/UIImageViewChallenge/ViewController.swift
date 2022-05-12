//
//  ViewController.swift
//  UIImageViewChallenge
//
//  Created by Ricky Bobby
//  Copyright © 2021 MobileMakersEdu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - MVP
    
    @IBOutlet weak var disappearingImageView: UIImageView!
    
    //MARK: - Stretch #3 - Part I
    
    
    
    @IBOutlet weak var slider: UISlider!
    var sliderValue: Double!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func whenSliderMoved(_ slider: UISlider) {
        //TODO: - MVP, Uncomment the line below
        disappearingImageView.alpha = CGFloat(slider.value)
        
        //MARK: - Stretch #3 - Part II
        
        
        
    }
    
    //MARK: - Stretch #1 and #2
    @IBAction func ChangeMe(_ sender: UIButton) {
        
        if disappearingImageView.image == UIImage(named:"Dragon")
        {disappearingImageView.image = UIImage(named:"Bianary")
        } else {disappearingImageView.image = UIImage(named:"Dragon")}

       
    }
    
    
    
}

