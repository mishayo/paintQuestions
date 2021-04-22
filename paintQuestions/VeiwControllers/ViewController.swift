//
//  ViewController.swift
//  paintQuestions
//
//  Created by михаил сулим on 20.04.2021.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var mainImage: UIImageView! {
        didSet {
            mainImage.layer.cornerRadius = 10
            mainImage.contentMode = .scaleToFill
        }
    }
    
    @IBOutlet weak var questionAButton: UIButton!
    @IBOutlet weak var questionBButton: UIButton!
    @IBOutlet weak var questionCButton: UIButton!
    @IBOutlet weak var questionDButton: UIButton!
     
    var aQuestion = ""
    var bQuestion = ""
    var cQuestion = ""
    var dQuestion = ""
      
    var imageName = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        roundCornerButton()
        setQuestions()
        setTitle()
        mainImage.image = UIImage(named: imageName)
        
    }

    
    
    enum Questions {
        case aQuestion
        case bQuestion
        case cQuestion
        case dQuestion
    }
    
    func actionForPress(for questions: Questions) {
        switch  questions {
        case .aQuestion:
            if imageName != aQuestion {
                questionAButton.backgroundColor = UIColor.systemRed
                questionBButton.backgroundColor = view.backgroundColor
                questionCButton.backgroundColor = view.backgroundColor
                questionDButton.backgroundColor = view.backgroundColor
            } else {
                questionAButton.backgroundColor = UIColor.systemGreen
                questionBButton.backgroundColor = view.backgroundColor
                questionCButton.backgroundColor = view.backgroundColor
                questionDButton.backgroundColor = view.backgroundColor
            }
        case .bQuestion:
            if imageName != bQuestion {
                questionBButton.backgroundColor = UIColor.systemRed
                questionAButton.backgroundColor = view.backgroundColor
                questionCButton.backgroundColor = view.backgroundColor
                questionDButton.backgroundColor = view.backgroundColor
            } else {
                questionBButton.backgroundColor = UIColor.systemGreen
                questionAButton.backgroundColor = view.backgroundColor
                questionCButton.backgroundColor = view.backgroundColor
                questionDButton.backgroundColor = view.backgroundColor
            }
        case .cQuestion:
            if imageName != cQuestion {
                questionCButton.backgroundColor = UIColor.systemRed
                questionAButton.backgroundColor = view.backgroundColor
                questionBButton.backgroundColor = view.backgroundColor
                questionDButton.backgroundColor = view.backgroundColor
            } else {
                questionCButton.backgroundColor = UIColor.systemGreen
                questionAButton.backgroundColor = view.backgroundColor
                questionBButton.backgroundColor = view.backgroundColor
                questionDButton.backgroundColor = view.backgroundColor
            }
        case .dQuestion:
            if imageName != dQuestion {
                questionDButton.backgroundColor = UIColor.systemRed
                questionAButton.backgroundColor = view.backgroundColor
                questionBButton.backgroundColor = view.backgroundColor
                questionCButton.backgroundColor = view.backgroundColor
            } else {
                questionDButton.backgroundColor = UIColor.systemGreen
                questionAButton.backgroundColor = view.backgroundColor
                questionBButton.backgroundColor = view.backgroundColor
                questionCButton.backgroundColor = view.backgroundColor
            }
        }
    
    }
    
    @IBAction func pressAButton() {
        actionForPress(for: .aQuestion)
    }
    @IBAction func pressBButton() {
        actionForPress(for: .bQuestion)
    }
    @IBAction func pressCButton() {
        actionForPress(for: .cQuestion)
    }
    @IBAction func pressDButton() {
        actionForPress(for: .dQuestion)
    }
    @IBAction func pressNextButton() {
        trueAnswer()
    }
    
    @IBAction func pressCancelButton() {
        dismiss(animated: true)
    }
    
    
    func trueAnswer() {
        
        setQuestions()
        setTitle()
        mainImage.image = UIImage(named: imageName)
        getBackgroundColor()
    }
    
    func setQuestions() {
        let arrayFourEnimals = Enimals.getArrayFourEnimal()
        var fourAnimals = [String]()
       fourAnimals += arrayFourEnimals
        aQuestion = fourAnimals[0]
        bQuestion = fourAnimals[1]
        cQuestion = fourAnimals[2]
        dQuestion = fourAnimals[3]
        imageName = fourAnimals.randomElement() ?? aQuestion
        mainImage.image = UIImage(named: imageName)
        
    }
    
    func getBackgroundColor() {
        questionAButton.backgroundColor = view.backgroundColor
        questionBButton.backgroundColor = view.backgroundColor
        questionCButton.backgroundColor = view.backgroundColor
        questionDButton.backgroundColor = view.backgroundColor
    }
    
    func setTitle() {
        questionAButton.setTitle("A : \(aQuestion)", for: .normal)
        questionBButton.setTitle("\(bQuestion) : C  ", for: .normal)
        questionCButton.setTitle("B : \(cQuestion)", for: .normal)
        questionDButton.setTitle("\(dQuestion) : D  ", for: .normal)
    }
    func roundCornerButton() {
        questionAButton.layer.cornerRadius = 10
        questionBButton.layer.cornerRadius = 10
        questionCButton.layer.cornerRadius = 10
        questionDButton.layer.cornerRadius = 10
    }
}

