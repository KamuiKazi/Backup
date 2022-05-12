//
//  RetrieveViewController.swift
//  PersistenceChallenge
//
//  Created by Bobb Darnell
//  Copyright © 2021 MobileMakersEdu. All rights reserved.
//

import UIKit
import SafariServices

class RetrieveViewController: UIViewController {

    @IBOutlet weak var integerLabel: UILabel!
    @IBOutlet weak var arrayLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    var retrievedURL: URL!
    var retrievedContact: Contact!
    override func viewDidLoad() {
        super.viewDidLoad()}
    @IBAction func retrieveInteger(_ sender: UIButton) {
        // MARK: - MVP - Part II
        let user = UserDefaults.standard
        integerLabel.text = user.string(forKey: "integer")}
    @IBAction func retrieveURL(_ sender: UIButton) {
        // MARK: - Stretch #1 - Part II
        let user = UserDefaults.standard
        retrievedURL = URL(string: user.string(forKey: "url") ?? "")
        let svc = SFSafariViewController(url: retrievedURL)
        present(svc, animated: true, completion: nil)}
    @IBAction func retrieveArray(_ sender: UIButton) {
        // MARK: - Stretch #2 - Part II
        let user = UserDefaults.standard
        let arrayString = user.array(forKey: "intArray")
        arrayLabel.text = "\(String(describing: arrayString))"}
    @IBAction func retrieveClass(_ sender: UIButton) {
        // MARK: - Stretch #3 - Part III
        let user = UserDefaults.standard
        let contactArray = user.array(forKey: "ContactArray")
        nameLabel.text = contactArray?[0] as? String
        ageLabel.text = contactArray?[1] as? String
        phoneLabel.text = contactArray?[2] as? String
        
    }
    
}
