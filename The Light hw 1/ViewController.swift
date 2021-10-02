//
//  ViewController.swift
//  The Light hw 1
//
//  Created by Андрей on 02.10.2021.
//

import UIKit

class ViewController: UIViewController {

    var isLightOn: Int = 0
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    fileprivate func updateBackGround() {
        switch isLightOn {
        case 1: view.backgroundColor = .gray
        case 2: view.backgroundColor = .white
        default: view.backgroundColor = .black
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        switch isLightOn {
        case 1: isLightOn = 2
        case 2: isLightOn = 0
        default: isLightOn = 1
        }
        
        updateBackGround()
    }
}

