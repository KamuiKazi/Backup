//
//  ViewController.swift
//  ConditionalsChallenge
//
//  Created by Bob Marley
//  Copyright © 2021 MobileMakersEdu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var myTableView: UITableView!
    @IBOutlet weak var myTextView: UITextView!
    @IBOutlet weak var mySegmentedControl: UISegmentedControl!
    
    var firstChoiceCost = 0
    var secondChoiceCost = 0
    var thirdChoiceCost = 0
    var fourthChoiceCost = 0

    
    var totalMoney = Int()
    var stringToReturn = ""
    
    var clothingItemArray = [ClothingItems]()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        clothingItemArray.append(ClothingItems(Description: "Jacket", Price: 80))
        clothingItemArray.append(ClothingItems(Description: "Jeans", Price: 60))
        clothingItemArray.append(ClothingItems(Description: "Shirt", Price: 40))
        clothingItemArray.append(ClothingItems(Description: "Hat", Price: 20))
        
        myTableView.isEditing = true
    }
    
    func determineOutputMVP() -> String
    {
        setInfo()
        // MARK: - MVP
        if totalMoney >= firstChoiceCost {
            stringToReturn = "You can purchase your first choice."
        }
        else {
         stringToReturn = "You cannot purchase your first choice."
        }
        return stringToReturn
    }
    
    func determineOutput1() -> String
    {
        setInfo()
        // MARK: - Stretch #1
        if totalMoney > firstChoiceCost {
            stringToReturn = "You have plenty of money for your first choice."
        }
        else if totalMoney == firstChoiceCost {
            stringToReturn = "You have just enough money for your first choice."
        }
        else {
            stringToReturn = "You do not have enough money for your first choice."
        }
        return stringToReturn
    }
    
    func determineOutput2() -> String
    {
        setInfo()
        // MARK: - Stretch #2
        if totalMoney >= firstChoiceCost {
            stringToReturn = "You can Purchace your first Choice."
        }
        if totalMoney >= secondChoiceCost {
            stringToReturn = "\(stringToReturn)\n You can Purchace your second Choice."
        }
        if totalMoney >= thirdChoiceCost {
            stringToReturn = "\(stringToReturn)\n You can Purchace your third Choice."
        }
        if totalMoney >= fourthChoiceCost {
            stringToReturn = "\(stringToReturn)\n You can Purchace your fourth Choice."
        }
        else {
            stringToReturn = "You cannot purchase any of you choices."
        }
        return stringToReturn
    }
    
    func determineOutput3() -> String
    {
        setInfo()
        // MARK: - Stretch #3
        if totalMoney >= firstChoiceCost {
            stringToReturn = "You can Purchace your first Choice."
        }
        else if totalMoney <= firstChoiceCost{
            stringToReturn = "\(stringToReturn)\n You cannot purchase your first choice."
        }
        if totalMoney >= secondChoiceCost {
            stringToReturn = "\(stringToReturn)\n You can Purchace your second choice."
        }
        else if totalMoney <= secondChoiceCost{
            stringToReturn = "\(stringToReturn)\n You cannot purchase your second choice."
        }
        if totalMoney >= thirdChoiceCost {
            stringToReturn = "\(stringToReturn)\n You can Purchace your third choice."
        }
        else if totalMoney <= thirdChoiceCost{
            stringToReturn = "\(stringToReturn)\n You cannot purchase your third choice."
        }
        if totalMoney >= fourthChoiceCost {
            stringToReturn = "\(stringToReturn)\n You can Purchace your fourth choice."
        }
        else if totalMoney <= fourthChoiceCost {
            stringToReturn = "\(stringToReturn)\n You cannot purchase you fouth choice."
        }
        else {
            stringToReturn = "You cannot purchase any of your choices"
        }
        
        
        return stringToReturn
    }
    
    func determineOutput4() -> String
    {
        
        setInfo()
        // MARK: - Stretch #4
        let totalCost = firstChoiceCost + secondChoiceCost + thirdChoiceCost + fourthChoiceCost
        
        if totalMoney >= totalCost {
            stringToReturn = "You can Purchace all four of your choices"
        }
        else if totalMoney >= totalCost - fourthChoiceCost {
            stringToReturn = "You can purchace your first three choices."
        }
        else if totalMoney >= firstChoiceCost + secondChoiceCost {
            stringToReturn = "You can purchace your first and second choices."
        }
        else if totalMoney >= firstChoiceCost {
            stringToReturn = "You can only purchace your first choice."
        }
        else {
            stringToReturn = "You cannot purchace any of your choices."
        }
        return stringToReturn
    }
    
    func determineOutput5() -> String
    {
        setInfo()
        // MARK: - Stretch #5
        let totalCost = firstChoiceCost + secondChoiceCost + thirdChoiceCost + fourthChoiceCost
        var remainingMoney = 0
        var cost = 0
        
        if totalMoney >= totalCost {
            remainingMoney = totalMoney - totalCost
            cost = totalCost
            stringToReturn = "You can purchace all four of your choices. \n you have spent $\(cost) and have $\(remainingMoney) remaining."
        }
        else if totalMoney >= totalCost - fourthChoiceCost {
            remainingMoney = totalMoney - (totalCost - fourthChoiceCost)
            cost = totalCost - fourthChoiceCost
            stringToReturn = "You can purchace your first Three choices. \n you have spent $\(cost) and have $\(remainingMoney) remaining."
        }
        else if totalMoney >= firstChoiceCost + secondChoiceCost {
            remainingMoney = totalMoney - (firstChoiceCost + secondChoiceCost)
            cost = firstChoiceCost + secondChoiceCost
            stringToReturn = "You can purchace your first and second choices. \n you have spent $\(cost) and have $\(remainingMoney) remaining."
        }
        else if totalMoney >= firstChoiceCost {
            remainingMoney = totalMoney - firstChoiceCost
            cost = firstChoiceCost
            stringToReturn = "You can purchace your first choice. \n you have spent $\(cost) and have $\(remainingMoney) remaining."
        }
        else {
            stringToReturn = "You cannot purchace any of your choices. \n You have $\(totalMoney) remaining."
        }
    
        return stringToReturn
    }
    
    
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool
    {
        return true
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath)
    {
        let selectedItem = clothingItemArray[sourceIndexPath.row]
        clothingItemArray.remove(at: sourceIndexPath.row)
        clothingItemArray.insert(selectedItem, at: destinationIndexPath.row)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")!
        let selectedClothingItem = clothingItemArray[indexPath.row]
        cell.textLabel!.text = selectedClothingItem.description + " $\(selectedClothingItem.price)"
        return cell
    }
    
    @IBAction func whenRefreshPressed(_ sender: UIBarButtonItem)
    {
        setInfo()
        onSegmentChosenPressed()
    }
    
    func setInfo()
    {
        totalMoney = (Int)(arc4random_uniform(10)*20 + 20)
        stringToReturn = ""
        navigationItem.title = "You have $\(totalMoney)"
        firstChoiceCost = clothingItemArray[0].price
        secondChoiceCost = clothingItemArray[1].price
        thirdChoiceCost = clothingItemArray[2].price
        fourthChoiceCost = clothingItemArray[3].price
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return clothingItemArray.count
    }
    
    func onSegmentChosenPressed()
    {
        switch mySegmentedControl.selectedSegmentIndex
        {
        case 0:
            myTextView.text = determineOutputMVP()
        case 1:
            myTextView.text = determineOutput1()
        case 2:
            myTextView.text = determineOutput2()
        case 3:
            myTextView.text = determineOutput3()
        case 4:
            myTextView.text = determineOutput4()
        case 5:
            myTextView.text = determineOutput5()
        default:
            print("Error")
        }
    }
}

