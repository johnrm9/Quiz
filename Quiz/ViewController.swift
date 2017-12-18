//
//  ViewController.swift
//  Quiz
//
//  Created by John Martin on 12/17/17.
//  Copyright © 2017 John Martin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    private let questions = ["From what is cognac made?",
                               "What is 7+7?",
                               "What is the capital of Vermont?",
                               "What is ultimate answer of Life?"]
    private let answers = ["Grapes",
                             "14",
                             "Montpelier",
                             "42"]
    
    private var currentQuestionIndex = 0 {
        didSet {
            if currentQuestionIndex == questions.count {
                currentQuestionIndex = 0
            }
            questionLabel.text = questions[currentQuestionIndex]
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentQuestionIndex = 0
    }

    @IBAction func showNextQuestion(_ sender: UIButton) {
        currentQuestionIndex += 1
        answerLabel.text = "???"
    }
    

    @IBAction func showNextAnswer(_ sender: UIButton) {
        let answer = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
}

