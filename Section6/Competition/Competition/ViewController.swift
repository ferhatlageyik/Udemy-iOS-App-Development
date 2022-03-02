//
//  ViewController.swift
//  Competition
//
//  Created by Ferhat Geyik on 2.03.2022.
//

import UIKit


class ViewController: UIViewController {
    
    
    //MARK: - UI Elements
    @IBOutlet var emailTextField: UITextField!
    

    
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let myColor = UIColor.tintColor
        emailTextField.layer.borderColor = myColor.cgColor
        emailTextField.layer.borderWidth = 1.0
    }
    
    //MARK: - Actions
    
    @IBAction func signUpButtonTapped(_ button: UIButton){
        if emailTextField.text == "" {
            emailTextField.shake()
        } else {
            performSegue(withIdentifier: "signUp", sender: nil)
        }
    }


}


//MARK: - Extensions
extension UITextField {
    func shake() {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.05
        animation.repeatCount = 5
        animation.autoreverses = true
        animation.fromValue = CGPoint(x: self.center.x - 6.0, y: self.center.y)
        animation.toValue = CGPoint(x: self.center.x + 6.0, y: self.center.y)
        layer.add(animation, forKey: "position")
    }
}

