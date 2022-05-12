//
//  LineSegment.swift
//  CompositionChallenge
//
//  Created by Billy Bob Thorton
//  Copyright (c) 2021 MobileMakers. All rights reserved.
//


import UIKit


// MARK: - MVP
class LineSegment {
    init() {
        var Start = CGPoint(x: 0, y: 0)
        var End = CGPoint(x: 1, y: 1)
    }
    init(point1: CGPoint!, point2: CGPoint!) {
        var start = point1
        var end = point2
    }
    // MARK: - Stretch #1
    func getSlope() {
        var slope = end - start
    } 
    // MARK: - Stretch #2
    
    
    
}
//Put Closing MVP Brace Above

