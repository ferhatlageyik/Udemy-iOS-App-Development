//
//  ViewController.swift
//  My Flashlight
//
//  Created by Ferhat Geyik on 25.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var lightOn = true

   // @IBOutlet weak var lightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    func updateUI(){
        view.backgroundColor = lightOn ? .white : .black
    }

    @IBAction func buttonPressed(_ sender: Any) {
        lightOn.toggle()
        updateUI()
        
    }
    
}

