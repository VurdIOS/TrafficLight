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
    
    
    private let lightsCornerRadius: CGFloat = 50
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.layer.cornerRadius = lightsCornerRadius
        yellowLightView.layer.cornerRadius = lightsCornerRadius
        greenLightView.layer.cornerRadius = lightsCornerRadius
        startButton.layer.cornerRadius = 8
        
    }

    @IBAction func startButtonTapped(_ sender: UIButton) {
    }
    
}

