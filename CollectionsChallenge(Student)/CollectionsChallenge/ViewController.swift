//
//  ViewController.swift
//  CollectionsChallenge
//
//  Created by Bob Villa
//  Copyright © 2021 MobileMakersEdu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var indexTextField: UITextField!
    @IBOutlet weak var removedMovieLabel: UILabel!
    
    let sectionTitles = ["Arrays","Dictionaries"]
    var numberOfFavoriteMovies = 0
    var key = ""
    var value = 0
    var movie = ""
    
    // MARK: - MVP - Part I
    var myFavoriteMovies = ["Bleach: Hell Verse", "Dragon Ball Z: Lord Slug", "Pokémon: The First Movie"]
    var myMovieRatings: [String: Int] = ["Bleach: Hell Verse": 5, "Dragon Ball Z: Lord Slug": 5, "Pokémon: The First Movie": 5]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 35
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        label.backgroundColor = .lightGray
        label.text = sectionTitles[section]
        label.font = UIFont(name: "Times", size: 30)
        return label
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // MARK: - MVP - Part II
        let numberOfFavoriteMovies = myFavoriteMovies.count
        return numberOfFavoriteMovies
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // TODO: - MVP
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell") {
            if indexPath.section == 0 {
                movie = myFavoriteMovies[indexPath.row]
                cell.textLabel?.text = movie
            } else {
                print(indexPath.row)
                key = Array(myMovieRatings.keys)[indexPath.row]
                value = Array(myMovieRatings.values)[indexPath.row]
                var output = "\(key) "
                for _ in 1...value {
                    output += "⭐️"
                }
                cell.textLabel?.text = output
            }
            return cell
        }
        return UITableViewCell()
    }
    @IBAction func whenStretch1ButtonPressed(_ sender: UIButton) {
        // MARK: - Stretch #1
        myFavoriteMovies.append("Dragon Ball Z: Dead Zone")
        myMovieRatings = ["Dragon Ball Z: Dead Zone": 5]
        tableView.reloadData()
    }
    @IBAction func whenStretch2ButtonPressed(_ sender: UIButton) {
        // MARK: - Stretch #2
        myFavoriteMovies.insert("Spiderman (2002)", at: 0)
        myMovieRatings = ["Spiderman (2002)": 5]
        tableView.reloadData()
    }
    @IBAction func whenStretch3ButtonPressed(_ sender: UIButton) {
        // MARK: - Stretch #3
        let indexInt = Int(indexTextField.text ?? "0") ?? 0
        myFavoriteMovies.remove(at: indexInt)
        tableView.reloadData()
    }
}

