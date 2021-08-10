//
//  ViewController.swift
//  OneStepTask
//
//  Created by wala janajreh on 03/08/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var dataView: DataView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataView.initializeView()
    }
    
}

