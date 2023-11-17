//
//  ViewController.swift
//  Meme Maker Project
//
//  Created by 2b on 11/13/23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topSegmentedControl.removeAllSegments()
        for choice in topChoices { topSegmentedControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false) }
        topSegmentedControl.selectedSegmentIndex = 0
        
        bottomSegmentedControl.removeAllSegments()
        for choice in bottomChoices { bottomSegmentedControl.insertSegment(withTitle: choice.emoji, at: bottomChoices.count, animated: false) }
        bottomSegmentedControl.selectedSegmentIndex = 0
        
    }
    
    @IBOutlet weak var topSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var bottomSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var topCaptionLabel: UILabel!
    
    @IBOutlet weak var bottomCaptionLabel: UILabel!
    
    @IBAction func change(_ sender: Any) {
        topCaptionLabel.text = topChoices[topSegmentedControl.selectedSegmentIndex].caption
        bottomCaptionLabel.text = bottomChoices[bottomSegmentedControl.selectedSegmentIndex].caption
    }
    
var topChoices = [CaptionOption(emoji: "🍴", caption: "I'm starving for "), CaptionOption(emoji: "❤️", caption: "I love my"), CaptionOption(emoji: "✋", caption: "Pet my")]
    
var bottomChoices = [CaptionOption(emoji: "🐱", caption: "cat"), CaptionOption(emoji: "🐈", caption: "kitten"), CaptionOption(emoji: "😼", caption: "gato")]
                     
    @IBAction func dragTopLabel(_ sender: UIPanGestureRecognizer) {
        if sender.state == .changed { topCaptionLabel.center = sender.location(in: view)
        }
    }
    @IBAction func dragBottomLabel(_ sender: UIPanGestureRecognizer) {
        if sender.state == .changed { bottomCaptionLabel.center = sender.location(in: view)
        }
    }
}



