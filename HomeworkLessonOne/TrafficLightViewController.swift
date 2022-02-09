//
//  ViewController.swift
//  HomeworkLessonOne
//
//  Created by Mikhail on 08.02.2022.
//

import UIKit

enum CurrentLight {
    case red
    case yellow
    case green
}

class TrafficLightViewController: UIViewController {
    
    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    private var currentLight = CurrentLight.green
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.alpha = lightIsOff
        yellowLightView.alpha = lightIsOff
        greenLightView.alpha = lightIsOff
    }
    
    override func viewWillLayoutSubviews() { // Важно, если мы хотим делать размеры динамическими, то -> в методе viewDidLoad мы еще не знаем чему будет равна ширина, это значение становится известным в методе viewWillLayoutSubviews. Иначе, расчеты стоит перенети во viewDidLoad.
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        yellowLightView.layer.cornerRadius = redLightView.frame.width / 2
        greenLightView.layer.cornerRadius = redLightView.frame.width / 2
    }
    
    @IBAction func startButtonTapped() {
        
        startButton.setTitle("Next", for: .normal)
        
        switch currentLight {
        case .red:
            redLightView.alpha = lightIsOff
            yellowLightView.alpha = lightIsOn
            currentLight = .yellow
        case .yellow:
            yellowLightView.alpha = lightIsOff
            greenLightView.alpha = lightIsOn
            currentLight = .green
        case .green:
            greenLightView.alpha = lightIsOff
            redLightView.alpha = lightIsOn
            currentLight = .red
        }
    }
}
