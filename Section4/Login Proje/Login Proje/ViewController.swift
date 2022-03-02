//
//  ViewController.swift
//  Login Proje
//
//  Created by Ferhat Geyik on 21.01.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var userName: UITextField!
    @IBOutlet var forgotUserNameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        guard let sender = sender as? UIButton else {return}
        
        if sender == forgotUserNameButton{
            segue.destination.navigationItem.title = "Oooh oooh!"
        } else if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Don't worry!"
        } else {
            segue.destination.navigationItem.title = userName.text
        }
    }

    
    @IBAction func forgotUserNameButtonTapped(_ button: UIButton){
        performSegue(withIdentifier: "Triggered", sender: forgotUserNameButton)
    }
    
    @IBAction func forgotPasswordButtonTapped(_ button: UIButton){
        performSegue(withIdentifier: "Triggered", sender: forgotPasswordButton)
    }

}

