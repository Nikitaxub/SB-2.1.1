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
   
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        redCircleView.layer.cornerRadius = redCircleView.frame.width / 2
        redCircleView.alpha = 0.3
        yellowCircleView.layer.cornerRadius = yellowCircleView.frame.width / 2
        yellowCircleView.alpha = 0.3
        greenCircleView.layer.cornerRadius = greenCircleView.frame.width / 2
        greenCircleView.alpha = 0.3
        
        startButton.layer.cornerRadius = 10
        print(greenCircleView.frame.width, greenCircleView.frame.height)
    }

    @IBAction func startAction(_ sender: Any) {
    }
}

