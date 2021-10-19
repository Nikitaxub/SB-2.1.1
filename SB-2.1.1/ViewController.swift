//
//  ViewController.swift
//  SB-2.1.1
//
//  Created by xubuntus on 19.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redCircleView: UIView!
    @IBOutlet var yellowCircleView: UIView!
    @IBOutlet var greenCircleView: UIView!
    @IBOutlet var startButton: UIButton!
    
    var candidateToTurnOn : Int = 0 {
        didSet {
            if candidateToTurnOn == 4 {
                candidateToTurnOn = 1
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        if candidateToTurnOn == 0 {
            redCircleView.layer.cornerRadius = redCircleView.frame.width / 2
            redCircleView.alpha = 0.3
            yellowCircleView.layer.cornerRadius = yellowCircleView.frame.width / 2
            yellowCircleView.alpha = 0.3
            greenCircleView.layer.cornerRadius = greenCircleView.frame.width / 2
            greenCircleView.alpha = 0.3
            candidateToTurnOn += 1
        }
        startButton.layer.cornerRadius = 10
    }

    
    @IBAction func startAction(_ sender: UIButton) {
        startButton.setTitle("Next", for: .normal)
        
        switch candidateToTurnOn {
        case 1:
            redCircleView.alpha = 1
            greenCircleView.alpha = 0.3
        case 2:
            redCircleView.alpha = 0.3
            yellowCircleView.alpha = 1
        default:
            yellowCircleView.alpha = 0.3
            greenCircleView.alpha = 1
        }
        candidateToTurnOn += 1
    }

}

