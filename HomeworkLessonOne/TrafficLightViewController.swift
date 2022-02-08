//
//  ViewController.swift
//  HomeworkLessonOne
//
//  Created by Mikhail on 08.02.2022.
//

import UIKit

class TrafficLightViewController: UIViewController {


   
    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    @IBOutlet weak var startButton: UIButton!
    var light = "green"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.layer.cornerRadius = 50
        redLightView.layer.opacity = 0.3
        yellowLightView.layer.cornerRadius = 50
        yellowLightView.layer.opacity = 0.3
        greenLightView.layer.cornerRadius = 50
        greenLightView.layer.opacity = 0.3
    }
    @IBAction func startButtonTapped() {
        
        startButton.setTitle("Next", for: .normal)
        redLightView.layer.opacity = 0.3
        yellowLightView.layer.opacity = 0.3
        greenLightView.layer.opacity = 0.3
        
        switch light {
        case "red":
            yellowLightView.layer.opacity = 1
            light = "yellow"
        case "yellow":
            greenLightView.layer.opacity = 1
            light = "green"
        case "green":
            redLightView.layer.opacity = 1
            light = "red"
        default:
            break
        }
    }
}

