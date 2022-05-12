//
//  ViewController.swift
//  FunctionsChallenge
//
//  Created by Bobby Flay
//  Copyright © 2021 MobileMakersEdu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTextView: UITextView!
    var output1 = ""
    var output2 = ""
    var output3 = ""
    var output4 = ""
    var output5 = ""
    var output6 = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onSliderMoved(_ sender: UISlider) {
        let sliderValue:Int = (Int)(sender.value)

        switch sliderValue {
            case 0:
                //MARK: - MVP - Part II
                displayMVP()
                
                
                break
            case 1:
                 //TODO: - Stretch #1
               output1 = returnAString()
                
                myTextView.text = output1
            case 2:
                // TODO: - Stretch #2
                output2 = createSentence(language: "Swift")
                
                myTextView.text = output2
            case 3:
                // TODO: - Stretch #3
                output3 = createFruitLovingSentence(Fruits: "apples", And: "bananas")
                
                myTextView.text = output3
            case 4:
                var sentence = "Programming Rules"
                // TODO: - Stretch #4
                output4 = "\(sentence), has \(countTheCharacters(sentence: sentence)): characters"
                
                myTextView.text = output4
            case 5:
                // TODO: - Stretch #5
                var sentence = "Here is my sentence"
                let tuple = findVowelsConsonants(sentence: sentence)
                output5 = sentence + ", has:\n" + "Vowels:\(tuple.0) Consonants:\(tuple.1)"
                
                myTextView.text =  output5
            default:
                let anotherSentence = "Here is my other sentence"
                // TODO: - Stretch #6
                let tuple = findVowelsConsonantsPunctuation(anotherSentence: anotherSentence)
                output6 = anotherSentence + ", has:\n" + "Vowels:\(tuple.0) \nConsonants:\(tuple.1) \nPunctuation:\(tuple.2)"
                
                myTextView.text =  output6
        }
    }
    
    //MARK: - MVP - Part I
    func displayMVP() {
        myTextView.text = "MVP Completed"
    }
    
    //MARK: - Stretch #1
    func returnAString() -> String {
        return "Stretch #1 Complete"
    }
    
    //MARK: - Stretch #2
    func createSentence(language: String ) -> String {
        return "I love programming with " + language
    }
    
    //MARK: - Stretch #3
    func createFruitLovingSentence(Fruits: String , And: String) -> String{
        return "I Love " + Fruits + " and " + And
    }

    //MARK: - Stretch #4
    func countTheCharacters(sentence: String) -> Int{
        return Int(sentence.count)
    }
    
    //MARK: - Stretch #5
    let vowels: [Character] = ["a", "e", "i", "o", "u"]
    let consonants: [Character] = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
    func findVowelsConsonants(sentence: String) -> (Int,Int){
        var vowelCount = 0
        var consonantCount = 0
        var lowerSentence = Character(sentence)
        if vowels.contains(lowerSentence) {
            vowelCount += 1
            }
        if consonants.contains(lowerSentence) {
            consonantCount += 1
            }
        return(vowelCount, consonantCount)
        }

    //MARK: - Stretch #6
    let punctuation: [Character] = [",",".","/","?",";",":","<",">","'","[","]","{","}","|","!","@","#","$","%","^","&","*","(",")"]
    func findVowelsConsonantsPunctuation(anotherSentence: String) -> (Int,Int,Int){
        var vowelCount = 0
        var consonantCount = 0
        var punctuationCount = 0
        let lowerSentence = Character(anotherSentence)
        if vowels.contains(lowerSentence) {
            vowelCount += 1
            }
        if consonants.contains(lowerSentence) {
            consonantCount += 1
            }
        if punctuation.contains(lowerSentence) {
            punctuationCount += 1
        }
        
        return (vowelCount, consonantCount, punctuationCount)
    }
    
}

