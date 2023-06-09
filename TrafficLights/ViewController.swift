//
//  ViewController.swift
//  TrafficLights
//
//  Created by Gilbytes on 09.06.2023.
//

import UIKit

enum Light {
    case red
    case yellow
    case green
}

class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private var currentLight = Light.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
        
        redLightView.layer.cornerRadius = 60
        yellowLightView.layer.cornerRadius = 60
        greenLightView.layer.cornerRadius = 60
        
        startButton.layer.cornerRadius = 10
    }

    @IBAction func changeLightsButton() {
        startButton.setTitle("NEXT", for: .normal)
        
        switch currentLight {
        case .red:
            redLightView.alpha = 1
            currentLight = .yellow
            greenLightView.alpha = 0.3
        case .yellow:
            yellowLightView.alpha = 1
            currentLight = .green
            redLightView.alpha = 0.3
        case .green:
            greenLightView.alpha = 1
            currentLight = .red
            yellowLightView.alpha = 0.3
        }
        
    }
    
}

