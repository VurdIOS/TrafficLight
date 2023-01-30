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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.width / 2
        startButton.layer.cornerRadius = 8
        
        
    }

    @IBAction func startButtonTapped(_ sender: UIButton) {
        startButton.setTitle("NEXT", for: .normal)
        redLightView.alpha = 1
        
    }
    
}

