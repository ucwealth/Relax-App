//
//  ViewController.swift
//  Relax.io
//
//  Created by Decagon on 12/10/2021.
//

import UIKit

class ViewController: UIViewController, Storyboardable {
    var showOrangeVC: (() -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        title = "Relax.io"
        navigationController?.navigationBar.prefersLargeTitles = false
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        showOrangeVC?()
    }


}

