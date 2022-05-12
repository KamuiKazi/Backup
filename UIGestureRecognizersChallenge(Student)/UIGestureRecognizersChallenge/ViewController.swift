//
//  ViewController.swift
//  UIGestureRecognizersChallenge
//
//  Created by Robert F. Kennedy
//  Copyright © 2021 MobileMakersEdu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myView: UIView!
    @IBOutlet var tapGestureVar: UITapGestureRecognizer!
    @IBOutlet var panGestureVar: UIPanGestureRecognizer!
    @IBOutlet var pinchGestureVar: UIPinchGestureRecognizer!
    @IBOutlet var swipeGestureVar: UISwipeGestureRecognizer!
    @IBOutlet var rotationGestureVar: UIRotationGestureRecognizer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    //MARK: - MVP
    @IBAction func panGestureAction(_ sender: UIPanGestureRecognizer) {
        let fingerLocation = panGestureVar.location(in: view)
        myView.center = fingerLocation
    }
    //MARK: - Stretch #1
    @IBAction func tapGestureAction(_ sender: UITapGestureRecognizer) {
        if myView.backgroundColor == UIColor.systemBlue{
            myView.backgroundColor = UIColor.systemGreen
        }
        else {myView.backgroundColor = UIColor.systemBlue}
    }
    
    //MARK: - Stretch #2
    @IBAction func pinchGestureAction(_ sender: UIPinchGestureRecognizer) {
        let scaleVar = CGFloat(pinchGestureVar.scale * 100)
        let newSize = CGSize(width: scaleVar, height: scaleVar)
        let newFrame = CGRect(origin: myView.center, size: newSize)
        myView.frame = newFrame
    }
    
    //MARK: - Stretch #3
    @IBAction func swipeGestureAction(_ sender: UISwipeGestureRecognizer) {
        let alphaVar = swipeGestureVar.location(in: view).x
        myView.alpha = alphaVar
    }
 
    
    //MARK: - Stretch #4
    
    @IBAction func rotationGestureAction(_ sender: UIRotationGestureRecognizer) {
        myView.transform = CGAffineTransform(rotationAngle: rotationGestureVar.rotation)
    }
    
    
}

