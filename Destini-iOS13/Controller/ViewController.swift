//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        let selectedAnswer = sender.currentTitle!
        storyBrain.nextStory(selectedAnswer)
        updateView()
        
    }
    
    @objc func updateView() {
        storyLabel.text = storyBrain.getQuestionText()
        choice1Button.backgroundColor = UIColor.red
        choice2Button.backgroundColor = UIColor.purple
        choice1Button.setTitle(storyBrain.getChoiceOne(), for: .normal)
        choice2Button.setTitle(storyBrain.getChoiceTwo(), for: .normal)
    }
}

