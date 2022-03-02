//
//  ViewController2.swift
//  MyViewControllerLifeCycle
//
//  Created by Ferhat Geyik on 22.01.2022.
//

import UIKit

class PinkViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print("View Did Load Pink")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("View Will Appear Pink")

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("View Did Appear Pink")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("View Will Disappear Pink")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("View Did Disapper Pink")
    }


}
