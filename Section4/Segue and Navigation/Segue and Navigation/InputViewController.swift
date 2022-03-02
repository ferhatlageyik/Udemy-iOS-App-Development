//
//  InputViewController.swift
//  Segue and Navigation
//
//  Created by Ferhat Geyik on 20.01.2022.
//

import UIKit

class InputViewController: UIViewController {
    
    @IBOutlet var textField: UITextField!
    @IBOutlet var segueSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = textField.text
    }
    
   @IBAction func buttonTapped(_ button: UIButton){
       if segueSwitch.isOn{
           performSegue(withIdentifier: "goForward" , sender: nil)
       }
    }
    
}
