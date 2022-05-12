//
//  GridView.swift
//  GoSwift
//
//  Created by period4 on 10/22/21.
//

import UIKit

class GridView: UIView {
    
    let coloms: Int = 20
    let rows: Int = 20

    let originX: CGFloat = 0
    let originY: CGFloat = 0
    let cellside: CGFloat = 40
    
    override func draw(_ rect: CGRect) {
        drawGrid(rect)
    }
    func drawGrid(_ rect: CGRect) {
        let gridPath = UIBezierPath()
        
        for i in 0...rows {
            gridPath.move(to: CGPoint(x: originX, y: originY + CGFloat(i) * cellside ))
            gridPath.addLine(to: CGPoint(x: originX + CGFloat(coloms) * cellside, y: originY + CGFloat(i) * cellside))
            }
        for i in 0...coloms {
            gridPath.move(to: CGPoint(x: originX + CGFloat(i) * cellside, y: originY))
            gridPath.addLine(to: CGPoint(x: originX + CGFloat(i) * cellside, y: originY + CGFloat(rows) * cellside))
        
    }
        UIColor.black.setStroke()
        gridPath.stroke()
}
}
