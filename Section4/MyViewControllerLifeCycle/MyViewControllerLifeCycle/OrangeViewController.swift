//
//  ViewController.swift
//  MyViewControllerLifeCycle
//
//  Created by Ferhat Geyik on 22.01.2022.
//

import UIKit

class OrangeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print("View Did Load Orange")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("View Will Appear Orange")

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("View Did Appear Orange")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("View Will Disappear Orange")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("View Did Disapper Orange")
    }


}

