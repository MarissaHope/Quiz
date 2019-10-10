// Marissa Tucker
// CS 490
// September 7, 2017
//  ViewController.swift
//  Quiz
//  Created by Guest User on 8/22/17.
//  Copyright © 2017 upike. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Declares the question label
    @IBOutlet var questionLabel: UILabel!
    // Declares the answer label
    @IBOutlet var answerLabel: UILabel!
    
    // array of qustion
    let questions: [String] = [
        "What is the capital of Virgina?",
        "What is the capital of Vermont?",
        "What is cognac made from?",
        "What is the capital of Florida?",
        "What is the capital of the state of Washington?",
        "Which state is Jefferson City the capital of?",
        "Which state has Augusta as its capital?"
    ]
    
    // array of answers
    let answers: [String] = [
        "Richmond",
        "Montpelier",
        "Grapes",
        "Tallahassee",
        "Olympia",
        "Missouri",
        "Maine"
    ]
    
    var currentQuestionIndex: Int = 0
  
    // Action method that shows next question in the array
    @IBAction func showNextQuestion(_sender: UIButton) {
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
    // Shows current  question
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }
   // Action method that shows answers from the array list
    @IBAction func showAnswer(_sender: UIButton) {
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
