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
        dataView.titleLabel.text = DataManager.shared.greetingLogic()
 //      dataView.tableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
       // dataView.tableView.register(UINib(nibName: "TileTableViewCell", bundle: nil), forCellReuseIdentifier: "mcell")
    }
    
}

