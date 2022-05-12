//
//  Contact.swift
//  PersistenceChallenge
//
//  Created by Bobb Darnell
//  Copyright © 2021 MobileMakersEdu. All rights reserved.
//

import Foundation

class Contact {
   // MARK: - Stretch #3 - Part I
    var name: String
    var age: String
    var phone: String
    init(Name: String, Age: String, Phone: String) {
        self.name = Name
        self.age = Age
        self.phone = Phone
    let user = UserDefaults.standard
        let contactArray = [name, age, phone]
        user.set(contactArray, forKey: "ContactArray")
        
    }

}
