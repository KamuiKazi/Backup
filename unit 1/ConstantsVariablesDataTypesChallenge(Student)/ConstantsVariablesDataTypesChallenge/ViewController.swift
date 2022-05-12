//
//  ViewController.swift
//  VariablesAndAssignmentChallenge
//
//  Created by Robin Roberts
//  Copyright (c) 2021 MobileMakers. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var mvpLabel: UILabel!
    @IBOutlet weak var stretchOneLabel: UILabel!
    @IBOutlet weak var stretchTwoLabel: UILabel!
    @IBOutlet weak var stretchThreeLabel: UILabel!

    //MARK: - Stretch #1 - Part I
    var lastName = "Lehmann"
    var titleName = "Dr. "

    //MARK: - Stretch #2 - Part I
    var nameOne = "Stan"
    var nameTwo = "Willy"
    var nameThree = "Bill"
    var nameFour = "Frank"

    //MARK: - Stretch #3 - Part I
    var hs1 = 12
    var hs2 = 27
    var hs3 = 34
    var hs4 = 9
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: - MVP
        let firstName = "Andrew"
        
        //TODO: - MVP, Uncomment the line below
            mvpLabel.text = firstName
        
        //MARK: - Stretch #1 - Part II
        let greeting = "Hello "+titleName+lastName
        
        
        //TODO: - Stretch #1, Uncomment the line below
            stretchOneLabel.text = greeting

        //MARK: - Stretch #2 - Part II
        let teamOne = nameOne+", "+nameTwo
        let teamTwo = nameThree+", "+nameFour
        
        
        //TODO: - Stretch #2, Uncomment the line below
        stretchTwoLabel.text = "Team 1: \(teamOne)\nTeam 2: \(teamTwo)"

        //MARK: - Start Stretch #3 - Part II
        let score1 = nameOne + " & \(hs1)\n"
        let newScor1 = nameOne + String(hs1)
        let score2 = nameTwo + " & \(hs2)\n"
        let score3 = nameThree + " & \(hs3)\n"
        let score4 = nameFour + " & \(hs4)\n"
        let teamHighScoreOne = score1 + score2
        let teamHighScoreTwo = score3 + score4
        //TODO: - Stretch #3, Uncomment the line below
        stretchThreeLabel.text = "\(teamHighScoreOne)\n\(teamHighScoreTwo)"
    }

}

