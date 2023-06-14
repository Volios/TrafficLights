//
//  ViewController.swift
//  TrafficLights
//
//  Created by Gilbytes on 09.06.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private var currentLight = Light.red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        startButton.layer.cornerRadius = 10
        
        redLightView.alpha = lightIsOff
        yellowLightView.alpha = lightIsOff
        greenLightView.alpha = lightIsOff
        
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.width / 2
    }

    @IBAction func changeLightsButton() {
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
        }
        
        switch currentLight {
        case .red:
            redLightView.alpha = lightIsOn
            currentLight = .yellow
            greenLightView.alpha = lightIsOff
        case .yellow:
            yellowLightView.alpha = lightIsOn
            currentLight = .green
            redLightView.alpha = lightIsOff
        case .green:
            greenLightView.alpha = lightIsOn
            currentLight = .red
            yellowLightView.alpha = lightIsOff
        }
    }
}

extension ViewController {
    private enum Light {
        case red, yellow, green
    }
}
