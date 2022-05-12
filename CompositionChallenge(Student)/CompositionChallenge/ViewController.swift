//
//  ViewController.swift
//  CompositionChallenge
//
//  Created by Billy Bob Thorton
//  Copyright (c) 2021 MobileMakers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTextView: UITextView!
    var output = ""
    
    let point1 = CGPoint(x: 2, y: 0)
    let point2 = CGPoint(x: 0, y: 2)
    
    //TODO: - MVP
    var myLine1 = LineSegment()
    var myLine2 = LineSegment()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //TODO: - MVP
        myLine1 = LineSegment()
        myLine2 = LineSegment(point1: point1, point2: point2)
    }
    
    @IBAction func mvpButtonPressed(_ sender: UIButton) {
        //TODO: - MVP
        output =   "MVP:\n\n\tLine 1:\n\t\tStarts at \(myLine1.Start)\n\t\tEnds at \(myLine1.End)\n\tLine 2:\n\t\tStarts at \(myLine2.start)\n\t\tEnds at \(myLine2.end)\n\n"
        
        myTextView.text = output
    }
    
    @IBAction func stretch1ButtonPressed(_ sender: UIButton) {
        //TODO: - Stretch #1
        output +=   "Stretch #1:\n\n\tLine 1:\n\t\tThe slope is \(myLine1.getSlope())\n\tLine 2:\n\t\tThe slope is \(myLine2.getSlope())\n\n"
        
        myTextView.text = output
    }
    
    @IBAction func stretch2ButtonPressed(_ sender: UIButton) {
        //TODO: - Stretch #2
//        output += "Stretch #2:\n\n\tLine 1:\n\t\tThe length is \(myLine1.getLength())\n\tLine 2:\n\t\tThe length is \(myLine2.getLength())"
        
        myTextView.text = output
    }
}

