//
//  ViewController.swift
//  TrafficLight
//
//  Created by Камаль Атавалиев on 30.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    var lightsPosition = [false, false, false]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.width / 2
        startButton.layer.cornerRadius = 8
        
    }

    @IBAction func startButtonTapped(_ sender: UIButton) {
        startButton.setTitle("NEXT", for: .normal)
        findPositionForLights(lightsPosition)
        resultLightPosition(findIndexFor(lightsPosition))
        
        
    }
    
    func findPositionForLights(_ indexes: Array<Bool>) {
        switch lightsPosition {
        case [false, false, false]:
            lightsPosition = [true, false, false]
        case [true, false, false]:
            lightsPosition = [false, true, false]
        case [false, true, false]:
            lightsPosition = [false, false, true]
        case [false, false, true]:
            lightsPosition = [true, false, false]
        default:
            lightsPosition = [false, false, false]
        }
    }
        
    func findIndexFor(_ light: Array<Bool>) -> Int {
        var position = 0
        for index in light {
            if index == true {
                return position
            } else {
                position += 1
            }
        }
        return position
    }
    
    func resultLightPosition(_ position: Int) {
        if position == 0 {
            redLightView.alpha = 1
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 0.3
        } else if position == 1 {
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
            greenLightView.alpha = 0.3
        } else {
            redLightView.alpha = 0.3
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
        }
    }
    
    
}

