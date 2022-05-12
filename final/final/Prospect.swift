//
//  Prospect.swift
//  final
//
//  Created by period4 on 12/16/21.
//

class Prospect{
    var Data: [String] = [String]()
    var Address = "801 West Kensington Road Mount Prospect, IL 60056"
    var Website = "https://www.d214.org/phs"
    var Mascot = "Prospect"
    var SecondImage = "Prospect2"
    func FullData() -> Array<Any> {
        Data = [Address, Website, Mascot, SecondImage]
        return Data
    }
}
